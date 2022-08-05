<?php
require('database.php');
session_start();

if($_SERVER["REQUEST_METHOD"]=='POST')
{
  $email=$_POST['email'];
  $password=$_POST['password'];

  $sql = "SELECT * FROM `login`";
    $result = mysqli_query($db, $sql);
     $row = mysqli_num_rows($result);
    
            $row = mysqli_fetch_assoc($result);
            if($email!=$row['email'] && $password==$row['passwords']){
              echo ' <script>alert("incorrect email");</script>';

            }
            else if($password!=$row['passwords']&& $email==$row['email']){
              echo ' <script>alert("incorrect password");</script>';

            }
            else if($email!=$row['email']&& $password=!$row['passwords']){
              echo ' <script>alert("incorrect password and password");</script>';

            }
            else if($email==$row['email']&& $password==$row['passwords']){
              $_SESSION['isuserlogin']=true;
              $_SESSION['email']=$email;
              header('location:./admin/index.php');
            }
            else{

              echo ' <script>alert("All details Are Incorrect!!");</script>';

            }

          }   
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="main.css">
    
    <title>CarParking-MS</title>
</head>
<body>
    <div class="main1">
        <div class="heading"><h2>CarParking Management System</h2></div>
        <div class="login1">
       
        <div class="login-side">
            <p>Admin Login !!</p>
            
            <button class="button" id="button">Login</button>

        
        </div>
        </div>
    </div>
    

    <div class="main">
        <div class="close" id="close">
            <i class="fas fa-times"></i>
        </div>
        <div class="main-login">
            <div class="login">
                <div class="login-heading">
                    <p>LOGIN</p>
                </div>
                <div class="login-content">
                    <form action="" method="post">
                    <div class="email">
                        <label for="Email">Email</label>
                        <input type="email" placeholder="Enter your email" name="email">
                    </div>
                    <div class="password">
                        <label for="password">Password</label>
                        <input type="password" placeholder="Enter your password" name="password">
                    </div>
                    <div class="checkbox">
                        <input type="checkbox">
                        <label for="">Remember me</label>
                     
                    </div>
                    <div class="login-button">
                        <button>LOGIN</button>
                    </div>
                    </form>

                    <div class="forget">
                        <a href="../include/reset-password.php">Forgot Password?</a>
                    </div>
                    <div class="or">
                        <span>OR</span>
                    </div>
                    <div class="social-media">
                        <a href="#" class="fab fa-google"></a>
                        <a href="#" class="fab fa-facebook-f"></a>
                        
                        <a href="#" class="fab fa-linkedin-in"></a>
                       
                    </div>
                    <div class="create">
                        <p>Need an account?<a href="#">SIGN UP</a></p>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/af770f3e7b.js" crossorigin="anonymous"></script>
    <script>

        var button=document.getElementById("button");
        var main1=document.getElementsByClassName("main");
        var close1=document.getElementById("close")
        button.addEventListener('click',()=>{
            for (const box of main1) {
                box.classList.add('active');
                }
           
        });
        close1.addEventListener('click',()=>{
            for (const box of main1) {
                box.classList.remove('active');
                }
           
        })



    </script>

</body>
</html>