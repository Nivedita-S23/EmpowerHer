<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit();
}
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_SESSION['user_id'];
    $name = trim($_POST['name']);
    $age = intval($_POST['age']);
    $aadhar = trim($_POST['aadhar']);
    $address = trim($_POST['address']);
    $contact = trim($_POST['contact']);
    $email = trim($_POST['email']);
    $message = trim($_POST['message']);

    if (!empty($message) && !empty($name) && !empty($age) && !empty($aadhar) && !empty($address) && !empty($contact) && !empty($email)) {
        $stmt = $conn->prepare("INSERT INTO complaints (user_id, name, age, aadhar, address, contact, email, message) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("isisssss", $user_id, $name, $age, $aadhar, $address, $contact, $email, $message);
        if ($stmt->execute()) {
            echo "<script>alert('Complaint submitted successfully!'); window.location.href='dashboard.html';</script>";
        } else {
            echo "<script>alert('Error submitting complaint.');</script>";
        }
        $stmt->close();
    } else {
        echo "<script>alert('All fields are required.');</script>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>File a Complaint</title>
    <link rel="stylesheet" href="stylecomplain.css">
    <script>
        function validateForm() {
            const name = document.getElementById("name");
            const age = document.getElementById("age");
            const aadhar = document.getElementById("aadhar");
            const address = document.getElementById("address");
            const contact = document.getElementById("contact");
            const email = document.getElementById("email");
            const message = document.getElementById("message");

            const namePattern = /^[a-zA-Z\s]{3,50}$/;
            const agePattern = /^(?:1[89]|[2-9]\d)$/;  // 18 to 99 age range
            const aadharPattern = /^\d{12}$/;
            const contactPattern = /^\d{10}$/;
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!namePattern.test(name.value)) {
                alert("Please enter a valid name (3-50 characters).");
                name.focus();
                return false;
            }
            if (!agePattern.test(age.value)) {
                alert("Please enter a valid age (18-99).");
                age.focus();
                return false;
            }
            if (!aadharPattern.test(aadhar.value)) {
                alert("Please enter a valid 12-digit Aadhar number.");
                aadhar.focus();
                return false;
            }
            if (!contactPattern.test(contact.value)) {
                alert("Please enter a valid 10-digit contact number.");
                contact.focus();
                return false;
            }
            if (!emailPattern.test(email.value)) {
                alert("Please enter a valid email address.");
                email.focus();
                return false;
            }
            if (message.value.trim() === "") {
                alert("Please enter your complaint.");
                message.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="fullcontainer">
    <h1>File a Complaint</h1>
    <form action="complaint.php" method="POST" onsubmit="return validateForm()">
        <div class="container">
            <input type="text" id="name" name="name" class="namearea" placeholder="Name" required>
            <input type="text" id="age" name="age" class="namearea" placeholder="Age" required>
            <input type="text" id="aadhar" name="aadhar" class="namearea" placeholder="Aadhar Card number" required>
            <input type="text" id="address" name="address" class="namearea" placeholder="Address" required>
            <input type="text" id="contact" name="contact" class="namearea" placeholder="Contact number" required>
            <input type="email" id="email" name="email" class="namearea" placeholder="Email" required>
        </div>
        <div class="container2"> 
            <textarea id="message" name="message" class="txtarea" placeholder="Enter your complaint" required></textarea>
            <button type="submit">Submit</button>
            <a href="dashboard.html">Back to Dashboard</a>
        </div>
    </form>
</div>
</body>
</html>

