<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Remember Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container m-5 ">
<div class="card  w-50   m-auto">
  <div class="card-body  ">
  
    <h2 class="card-header">Login Form</h2>
  <form action="" method="post">
    <div class="form-group">
      <label for="email" class="h5">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" autocomplete="off" value="<?php if(isset($_COOKIE['usernamecookie'])) {echo $_COOKIE['usernamecookie'] ;}?>" >
     </div>
    <div class="form-group">
      <label for="pwd" class="h5">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"  autocomplete="off" value="<?php if(isset($_COOKIE['passwordcookie'])){ 
        echo( $_COOKIE['passwordcookie']);}?>">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="rememberme"> Remember me
      </label>
    </div>
   
    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</div>
</div>
</body>
</html>

<?php  
include('config.php');

if(isset($_POST['submit'])){
 $username=$_POST['username'];
 $password=$_POST['password'];
 $sql = "select * from registration where username='$username' && password='$password'";
 $result = mysqli_query($con,$sql);
  if (mysqli_num_rows($result)>0){
  $row = mysqli_fetch_array($result);
  //alert("hello");
   if ($row) {

    $_SESSION['username'] = $row['username'];

    if(isset($_POST['rememberme'])) {
      setcookie('usernamecookie',$username,time()+86400);
      setcookie('passwordcookie',$password,time()+86400);
    }

    header('location:timer.html');
   
    
  }
    else 
    {
      echo "<script> alert('Invalid credential')</script>";
    }
  }
}

?>
