<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "virtual_bank";

$from_date = $_POST['from_date'];
$to_date = $_POST['to_date'];
$type = $_POST['type'];
$status = $_POST['status'];
$users = $_POST['users'];

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
    $stmt = $pdo->prepare("INSERT INTO transactionhistory (from_date, to_date, type, status, users) 
                           VALUES (:from_date, :to_date, :type, :status, :users)");

    $stmt->bindParam(':from_date', $from_date);
    $stmt->bindParam(':to_date', $to_date);
    $stmt->bindParam(':type', $type);
    $stmt->bindParam(':status', $status);
    $stmt->bindParam(':users', $users);

    $stmt->execute();
    
    echo "Transaction History Data inserted successfully";
} catch(PDOException $e) {
    
    echo "Connection failed: " . $e->getMessage();
}
?>