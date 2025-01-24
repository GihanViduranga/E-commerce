<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-4">
    <!-- Add Category Form -->
    <div class="card mb-4">
        <div class="card-header">Add New Category</div>
        <div class="card-body">
            <!-- Important: Add enctype and correct servlet mapping -->
            <form id="categoryForm" action="Category" method="post" enctype="multipart/form-data"><!-- Category Name -->
                <div class="mb-3">
                    <label for="name" class="form-label">Category Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <!-- Category Description -->
                <div class="mb-3">
                    <label for="description" class="form-label">Category Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                </div>
                <!-- Category Image -->
                <div class="mb-3">
                    <label for="image" class="form-label">Category Image</label>
                    <input type="file" class="form-control" id="image" name="categoryImage" accept="image/*" required>
                    <small class="text-muted">Maximum file size: 5MB. Supported formats: JPG, PNG, GIF</small>
                </div>
                <!-- Submit Button -->
                <button type="submit" class="btn btn-success">Add Category</button>
            </form>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Important: Add enctype and correct servlet mapping -->
                    <form action="Category" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" id="modal-category-id" name="id">
                        <!-- Category Name -->
                        <div class="mb-3">
                            <label for="modal-category-name" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="modal-category-name" name="name" required>
                        </div>
                        <!-- Category Description -->
                        <div class="mb-3">
                            <label for="modal-category-description" class="form-label">Category Description</label>
                            <textarea class="form-control" id="modal-category-description" name="description" rows="3" required></textarea>
                        </div>
                        <!-- Category Image -->
                        <div class="mb-3">
                            <label for="modal-category-image" class="form-label">Category Image</label>
                            <input type="file" class="form-control" id="modal-category-image" name="categoryImage" accept="image/*">
                            <small class="text-muted">Leave empty to keep current image</small>
                            <div class="mt-2">
                                <img id="modal-current-image" src="" alt="Category Image" style="max-width: 150px; max-height: 100px;">
                            </div>
                            <input type="hidden" id="current-image-path" name="currentImage">
                        </div>
                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-success">Update Category</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // JavaScript to populate the modal with dynamic data
    document.querySelectorAll('.edit-btn').forEach(button => {
        button.addEventListener('click', function () {
            const id = this.getAttribute('data-id');
            const name = this.getAttribute('data-name');
            const description = this.getAttribute('data-description');
            const image = this.getAttribute('data-image');

            document.getElementById('modal-category-id').value = id;
            document.getElementById('modal-category-name').value = name;
            document.getElementById('modal-category-description').value = description;
            document.getElementById('modal-current-image').src = 'images/categories/' + image;
            document.getElementById('current-image-path').value = image;
        });
    });

    // Preview image before upload
    function previewImage(input, imageElement) {
        if (input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function(e) {
                imageElement.src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    // Add preview listeners
    document.getElementById('image').addEventListener('change', function() {
        previewImage(this, document.getElementById('preview-image'));
    });

    document.getElementById('modal-category-image').addEventListener('change', function() {
        previewImage(this, document.getElementById('modal-current-image'));
    });

    /*const categoryForm = document.getElementById('categoryForm');

    categoryForm.addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission

        const name = document.getElementById('name').value;
        const description = document.getElementById('description').value;
        const image = document.getElementById('image').value;

        // Check if passwords match
        if (name == null && description == null && image == null) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Fill the Fields',
            });
            return;
        }

        // If validation passes, submit the form
        Swal.fire({
            icon: 'success',
            title: 'Category Added Successful!',
            text: 'Submitting your data...',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            categoryForm.submit(); // Submit the form
        });
    });*/
</script>
</body>
</html>
