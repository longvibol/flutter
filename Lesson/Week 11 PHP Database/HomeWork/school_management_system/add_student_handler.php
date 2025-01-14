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

$sql ="INSERT INTO `students`(`fullname`, `gender`, `phone`) VALUES ('$fullname','$gender','$phone')";
$result = $conn->query($sql);

if ($result) {
    header("Location: index.php");
    echo "Student Update successfully!";
} else {
    echo "Failed to create student";
}

?>