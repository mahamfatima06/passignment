<?php
include('../config.php');

$pname = $_POST["pname"];
$pprice = $_POST["pprice"];
$pcategory = $_POST["pcategory"];
$pweight = $_POST["pweight"];
$pstatus = $_POST['pstatus'];
$pimage = $_FILES["pimage"]["name"];
$tmp_name = $_FILES["pimage"]["tmp_name"];

if (!empty($pname) && !empty($pprice) && !empty($pcategory) && !empty($pweight) && !empty($pstatus) && !empty($pimage)) {
    $insert = "INSERT INTO `products` (`pid`, `pname`, `pprice`, `pimage`, `pcategory`, `pweight`, `pstatus`, `pdate`) 
               VALUES (NULL, '$pname', '$pprice', '$pimage', '$pcategory', '$pweight', '$pstatus', current_timestamp())";

    move_uploaded_file($tmp_name, 'upload/' . $pimage);
    
    $result = mysqli_query($connection, $insert);

    if ($result) {
        echo "Product successfully added";
    } else {
        echo "Error: " . mysqli_error($connection);
    }
}
?>
