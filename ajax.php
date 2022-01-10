<?php
if(isset($_GET['governorate']) && !empty($_GET['governorate'])){
    echo 'DONE';
    include ('conn.php');
    $id= $_GET['governorate'];
    $query= "select dis from gov_dis where gov='$id'";
    $do= mysqli_query($conn,$query);
    $count= mysqli_num_rows($do);
    if($count >0){
        echo 'DONE!';
        echo '<option>--اختر--</option>';
        while($row= mysqli_fetch_array($do)){
            
            echo '<option value="'.$row['dis'].'">'.$row['dis'].'</option>';
        }
        
    }

    else {
        echo 'error1';
    }
}



else{
    
    echo 'Error';
}

?>