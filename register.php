<?php
session_start ();
require_once 'conn.php';
if(isset($_POST['submit'])){
$governorate = $_POST['governorate'];
$qism = $_POST['qism'];
$com_num = $_POST['com_num'];
$com_date= $_POST['com_date'];
$child_name = $_POST['child_name'];
$child_birth = $_POST['child_birth'];
$gender = $_POST['gender'];
$parent_name = $_POST['parent_name'];
$phone = $_POST['phone'];
$referrer = $_POST['referrer'];
$resource = $_POST['resource'];
$age = $_POST['age'];
$education_level = $_POST['education_level'];
$danger_type = $_POST['danger_type'];
$relation = $_POST['relation'];
$father_work = $_POST['father_work'];
$income = $_POST['income'];
$clothes = $_POST['clothes'];
$drugs = $_POST['drugs'];
$mental_illness = $_POST['mental_illness'];
$schizophrenia = $_POST['schizophrenia'];
$emotional_disturbance = $_POST['emotional_disturbance'];
$worried = $_POST['worried'];
$developmental_disorder = $_POST['developmental_disorder'];
$cognitive_abilities = $_POST['cognitive_abilities'];
$response = $_POST['response'];
$attention = $_POST['attention'];
$realization = $_POST['realization'];
$guidance = $_POST['guidance'];
$mental = $_POST['mental'];
$mood = $_POST['mood'];
$intelligence = $_POST['intelligence'];
$service = $_POST['service'];
$diagnosis = $_POST['diagnosis'];
$date = date("Y/m/d");
$user = $_SESSION['username'];
$ins="INSERT INTO child (governorate,qism,com_num,com_date,child_name,child_birth,gender,parent_name,phone,referrer,resource,age,education_level,danger_type,relation,father_work,income,clothes,drugs,mental_illness,schizophrenia,emotional_disturbance,worried,developmental_disorder,cognitive_abilities,response,attention,realization,guidance,mental,mood,intelligence,service,diagnosis,user,date)VALUES ('$governorate','$qism','$com_num','$com_date','$child_name','$child_birth','$gender','$parent_name','$phone','$referrer','$resource','$age','$education_level','$danger_type','$relation','$father_work','$income','$clothes','$drugs','$mental_illness','$schizophrenia','$emotional_disturbance','$worried','$developmental_disorder','$cognitive_abilities','$response','$attention','$realization','$guidance','$mental','$mood','$intelligence','$service','$diagnosis','$user','$date')";
$query= mysqli_query($conn,$ins) or die("error:".mysqli_error($conn));
if($query) 
{ 
 echo '<script type="text/javascript">';
     echo ' alert("تم التسجيل بنجاح");';
     echo'window.location.href="form.php";';
    echo '</script>';
               
               
else {
    echo '<script type="text/javascript">';
     echo ' alert("عفواً! لم يتم التسجيل");';
     echo'window.location.href="form.php";';
    echo '</script>';
   
}
      
}?>