<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "virtual_bank";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $loantypes = $_POST['loan-types'];
    $surety = $_POST['surety'];

    $sql = "INSERT INTO apply_loans (name, phone, email, `loan-types`, surety) 
            VALUES ('$name', '$phone', '$email', '$loantypes', '$surety')";

    if ($conn->query($sql) === TRUE) {
        echo "Loan application submitted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>