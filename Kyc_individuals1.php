<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "virtual_bank";


// Form data
$Applicant_Name = isset($_POST["Applicant_Name"]) ? $_POST["Applicant_Name"] : '';
$fatherName = isset($_POST["fatherName"]) ? $_POST["fatherName"] : '';
$gender = isset($_POST["gender"]) ? $_POST["gender"] : '';
$maritalStatus = isset($_POST["maritalStatus"]) ? $_POST["maritalStatus"] : '';
$dob = isset($_POST["dob"]) ? $_POST["dob"] : '';
$nationality = isset($_POST["nationality"]) ? $_POST["nationality"] : '';
$Status = isset($_POST["Status"]) ? $_POST["Status"] : '';
$pan = isset($_POST["pan"]) ? $_POST["pan"] : '';
$aadhaar = isset($_POST["aadhaar"]) ? $_POST["aadhaar"] : '';
$poi = isset($_POST["poi"]) ? $_POST["poi"] : '';
$residenceAddress = isset($_POST["residenceAddress"]) ? $_POST["residenceAddress"] : '';
$city = isset($_POST["city"]) ? $_POST["city"] : '';
$pincode = isset($_POST["pincode"]) ? $_POST["pincode"] : '';
$state = isset($_POST["state"]) ? $_POST["state"] : '';
$country = isset($_POST["country"]) ? $_POST["country"] : '';
$Tel = isset($_POST["Tel"]) ? $_POST["Tel"] : '';
$Tel_Res = isset($_POST["Tel_Res"]) ? $_POST["Tel_Res"] : '';
$Mobile_No = isset($_POST["Mobile_No"]) ? $_POST["Mobile_No"] : '';
$Fax = isset($_POST["Fax"]) ? $_POST["Fax"] : '';
$Email = isset($_POST["Email"]) ? $_POST["Email"] : '';
$poa = isset($_POST["poa"]) ? $_POST["poa"] : '';
$PAddress = isset($_POST["PAddress"]) ? $_POST["PAddress"] : '';
$PCity = isset($_POST["PCity"]) ? $_POST["PCity"] : '';
$PPincode = isset($_POST["PPincode"]) ? $_POST["PPincode"] : '';
$PState = isset($_POST["PState"]) ? $_POST["PState"] : '';
$PCountry = isset($_POST["PCountry"]) ? $_POST["PCountry"] : '';

try {
    
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO details (Applicant_Name, fatherName, gender, maritalStatus, dob, nationality, Status, pan, aadhaar, poi, 
            residenceAddress, city, pincode, state, country, Tel, Tel_Res, Mobile_No, Fax, Email, poa, PAddress, PCity, PPincode, PState, PCountry) 
            VALUES ('$Applicant_Name', '$fatherName', '$gender', '$maritalStatus', '$dob', '$nationality', '$Status', '$pan', '$aadhaar', '$poi', 
            '$residenceAddress', '$city', '$pincode', '$state', '$country', '$Tel', '$Tel_Res', '$Mobile_No', '$Fax', '$Email', '$poa', '$PAddress', '$PCity', '$PPincode', '$PState', '$PCountry')";

    $conn->exec($sql);

    echo "KYC Application submitted successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
