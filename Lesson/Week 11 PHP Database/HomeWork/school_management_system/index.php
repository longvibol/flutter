<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "flutter_laravel_php_23";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$students = [];

$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $students = mysqli_fetch_all($result, MYSQLI_ASSOC);//then we conver to associtive array 
} else {
    echo "No students found";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>

<body>
    <div class="container">



        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add_student.php">Add Student</a>
                        </li>

                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="continer">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">FullName</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($students as $student): ?>
                        <tr>
                   
                            <td><?php echo $student["fullname"] ?></td>
                            <!-- <td><?php echo $student["id"] ?></td> -->
                            <td><?php echo $student["gender"] ?></td>
                            <td><?php echo $student["phone"] ?></td>
                            <td>
                                <a href="edit_student.php?id=<?php echo $student['id'] ?>" class="btn btn-primary">Edit</a>
                                <a href="delete_student_handler.php?id=<?php echo $student['id'] ?>" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        <?php
                    endforeach; ?>

                </tbody>
            </table>

        </div>



</body>

</html>