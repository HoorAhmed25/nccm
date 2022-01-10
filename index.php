<?php  session_start(); ?><html dir="rtl">
<head>
    <title>المجلس القومى للطفولة و الامومة - خط المشورة</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
           .card-body{
    width: 350px;
	margin-top: 50px;
    border-radius: 20px;
	box-shadow: 3px 4px #888888;
	background-color: white;
	height: 400px;
	padding-top: 50px;
	margin: auto;
    margin-top: 50px; !important
    transition: 0.5s;
}
.card-body:hover{
	
	background-color: white;
	height: 400px;
	padding-top: 50px;
	border-radius: 20px;
	box-shadow: 5px 6px 5px 6px #888888;
}
    
    
    </style>
    
     </head>
   <body style="background-color:#eeeeee; overflow-x: hidden; overflow-y:scroll;">
    <nav>
        <div class="row">
            <div class="col-1"><img src="img/logo.png" class="img-fluid"
                    style="height:85px;  margin-top:10px;" /></div>
        </div>
    </nav>
    
    
     <div class="container">
        <div class="row">
           
            <div class="container">
                <div class="card-body container WOW fadeIn text-center">
                    <h2 style="color:#2d483c;">تسجيل دخول</h2>
                    <form name="login" action="" method="POST">
                        <div class="form-group pt-3"><input name="username" type="text" class="form-control"
                                placeholder="اسم المستخدم" required><br><input name="password" type="password"
                                class="form-control" placeholder="**********" required><br><button
                                class="btn btn-lg text-white submitButton" type="submit" name="login">دخول</button></div>
                    </form>
                </div>
            </div>
    
        </div>
    </div><?php require_once 'conn.php';
    if(isset($_POST['login'])) {
        $username=$_POST['username'];
        $password=$_POST['password']; 
        $ins="SELECT * FROM users WHERE username = '$username' AND password = '$password' limit 1";
        $query=mysqli_query($conn, $ins) or die("error:".mysqli_error($conn));
        $result=mysqli_fetch_array($query);

        $_SESSION['username']=$username;
        $_SESSION['userLogin']="Loggedin";

        if(mysqli_num_rows($query)==1) {

           

                echo '<script type="text/javascript">';
                echo'window.location.href="form.php";';
                echo '</script>';
             

        }

        else {
            echo "<script type='text/javascript'>alert('تأكد من صلاحية دخولك للموقع');</script>";

        }

    }


    ?>
    
    
    
    
    <footer style="position:fixed;">
        <p style="font-size:19px;">&copy;
            2021 جميع الحقوق محفوظة للمجلس القومى للطفولة و الامومة. </p>
    </footer>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
    new WOW().init();
        </script>
</body>

</html>