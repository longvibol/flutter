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

$fullname = $_POST['fullname'];
$gender = $_POST['gender'];
$phone = $_POST['phone'];
$id = $_POST['id'];

$sql = "UPDATE `students` SET `fullname`='$fullname',`gender`='$gender',`phone`='$phone' WHERE id = $id";
$result = $conn->query($sql);

if ($result) {
    echo "Student Update successfully!";
    header("Location: index.php");
} else {
    echo "Failed To Update";
}

?>