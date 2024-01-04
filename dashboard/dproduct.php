<?php 
include("../config.php");

if(isset($_GET['pid'])){
    $pid = $_GET['pid'];


}

$delete = "DELETE from `products` WHERE `pid`= '$pid' ";
$del = mysqli_query($connection, $delete);
if($del){
    echo '<script>
    alert("data delete succesfull")
    window.location.href="products.php"
    </script>';
}
?>