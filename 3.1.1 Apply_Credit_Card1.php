<?php

$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "virtual_bank";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Form submission handling
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Escape user inputs for security
    $name = $conn->real_escape_string($_POST['name']);
    $phone = $conn->real_escape_string($_POST['phone']);
    $email = $conn->real_escape_string($_POST['email']);
    
    // Check if 'types' index is set in $_POST array
    $types = isset($_POST['types']) ? $conn->real_escape_string($_POST['types']) : '';
    
    $pan = $conn->real_escape_string($_POST['pan']);
    $address = $conn->real_escape_string($_POST['address']);
    $pin = $conn->real_escape_string($_POST['pin']);

    // Insert data into database
    $sql = "INSERT INTO apply_credit (name, phone, email, types, pan, address, pin)
    VALUES ('$name', '$phone', '$email', '$types', '$pan', '$address', '$pin')";

    if ($conn->query($sql) === TRUE) {
        echo "Credit card applied successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>
