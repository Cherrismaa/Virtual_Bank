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
    $loanType = $_POST['cardTypes'];
    $pan = $_POST['pan'];
    $address = $_POST['address'];
    $pin = $_POST['pin'];


    $sql = "INSERT INTO inter_transfer (name, phone, email, `cardTypes`, pan, address, pin)
            VALUES ('$name', '$phone', '$email', '$loanType', '$pan' ,'$address', '$pin')";

    if ($conn->query($sql) === TRUE) {
        echo "Credit Card application submitted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>