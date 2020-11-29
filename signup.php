<?php
include 'config.php';
if (isset($_POST["submit"])) 
{
  $username= $_POST['username'];
  $password=$_POST['pswd'];
  $Confirmpass = $_POST['cpswd'];
  $address = $_POST['address'];
  $gender = $_POST['optradio'];

  $q = "INSERT INTO `registration`( username, password, confirm, address, gender) VALUES ('$username','$password',' $Confirmpass','$address', '$gender')";
  $query = mysqli_query($con,$q);
  if($query==true)
  {
    header("location:login.php");
  }
  else
  {
echo "problem in registration";
  }

}
?>


