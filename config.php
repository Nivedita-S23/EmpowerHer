<?php
$host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "women_safety";

$conn = new mysqli($host, $db_user, $db_pass, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>