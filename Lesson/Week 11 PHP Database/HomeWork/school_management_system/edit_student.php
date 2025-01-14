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


if (isset($_GET['id'])) {// check if the method it GET or Not 
    $id = $_GET['id'];// get id parameter from borwer 

    $sql = "SELECT * FROM students WHERE id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();


        $fullname = $row['fullname'];
        $gender = $row['gender'];
        $phone = $row['phone'];
    } else {
        echo "No stduents found";
    }

} else {
    echo "No id specified";
    exit;
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Add Student</title>
</head>

<body>
    <div class="container">
        <h2>Edit Student</h2>

        <form action="edit_student_handler.php" method="POST">
            <input type="hidden" name="id" value="<?php echo $id ?>">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Full Name</label>
                <input type="text" value="<?php echo $fullname ?>" name="fullname" class="form-control"
                    id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>

            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Gender</label>
                <input type="text" value="<?php echo $gender ?>" name="gender" class="form-control"
                    id="exampleInputPassword1">
            </div>

            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Phone Number</label>
                <input type="text" value="<?php echo $phone ?>" name="phone" class="form-control"
                    id="exampleInputPassword1">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    </div>

</body>

</html>