<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "virtual_bank";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $doi = $_POST['Doi'];

    $poi = isset($_POST['Poi']) ? $_POST['Poi'] : "";
    
    $date = $_POST['date'];
    $pan = $_POST['Pan'];
    $regNo = $_POST['RegistrationNo'];
    $status =  $_POST['status'];
    $residenceAddress = $_POST['residenceAddress'];
    $city = $_POST['city'];
    $pincode = $_POST['pincode'];
    $state = $_POST['state'];
    $country = $_POST['country'];
    $telOff = $_POST['Tel'];
    $telRes = $_POST['Tel_Res'];
    $mobileNo = $_POST['Mobile_No'];
    $fax = $_POST['Fax'];
    $email = $_POST['Email'];
    $poa = $_POST['poa'];
    $registeredAddress = $_POST['RegisteredAddress'];
    $permanentCity = $_POST['PCity'];
    $permanentPincode = $_POST['PPincode'];
    $permanentState = $_POST['PState'];
    $permanentCountry = $_POST['PCountry'];
    $namePan = $_POST['NamePan'];
    $din = $_POST['DIN'];
    $aadhaar = $_POST['Aadhaar'];

    $sql = "INSERT INTO non-details (name, doi, Poi, date, pan, RegistrationNo , status, residenceAddress, city, pincode, state, country, Tel, tel_Res, Mobile_No, Fax, Email, poa, 
    RegisteredAddress, PCity, PPincode, PState, PCountry, NamePan, DIN, Aadhaar) 
    
    VALUES ('$name', '$doi', '$poi', '$date', '$pan', '$regNo', '$status', '$residenceAddress', '$city', '$pincode', '$state', '$country', '$telOff', '$telRes', '$mobileNo', '$fax', '$email', '$poa', 
    '$registeredAddress', '$permanentCity', '$permanentPincode', '$permanentState', '$permanentCountry', '$namePan', '$din', '$aadhaar')";
    

    if ($conn->query($sql) === TRUE) {
        echo "<h3>Successfully submitted the KYC Application !</h3>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
