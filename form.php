<?php session_start();if(empty($_SESSION['userLogin']) || $_SESSION['userLogin'] == ''){
    header("Location: index.php");
    die();
} else{include 'conn.php';?><html dir="rtl">
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
     <script src="js/jquery-3.3.1.min.js"></script>
    <style>
    .submitButton{
   background-image: linear-gradient(to right, #2b4539, #467c63); 
    margin-top: 10px;
}
.submitButton:hover{
    background-color: #2b4539;  
    margin-top: 10px;
 
}
 </style>
<script>
  $(document).ready(function() {

    $('#governorate').on('change', function() {

      var governorate = $(this).val();
      if (governorate) {
        $.get(
          "ajax.php", {
            governorate: governorate
          },
          function(data) {

            $('#qism').html(data);

          });

      } else {
        $('#qism').html('<option>اختر المحافظة اولا</option>')
      }

    });
   

  });
  </script>
    </head>
   <body style="background-color:#eeeeee; overflow-x: hidden; overflow-y:scroll;">
    <nav>
        <div class="row">
            <div class="col-1"><img src="img/logo.png" class="img-fluid"
                    style="height:85px;  margin-top:10px;" /></div>
             <div class="dropdown show d-inline h3 col-4">
        <a class="h4 dropdown-toggle float-left ml-4 mt-4 text-white" href="#" role="button" id="dropdownMenuLink"
          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <?php echo $_SESSION['username']; ?>
        </a>
         <div class="dropdown-menu float-left" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item text-center" href="index.php">تسجيل خروج</a>

                </div>
      </div>
        </div>
    </nav>
       <div class="title text-center text-dark border-bottom mb-3">
        <h3 class="heading"> المقابلة الإكلينيكية لوحدة الدعم النفسي</h3>
    </div>
    <section class="container text-white" id="result">
        <h4 class="container-fluid headOfPersonal mb-0 pb-0">البيانات الأساسية
            <p id="showHide" onclick="toggleForm()">
                <i class="fas fa-chevron-up"></i>
            </p>
        </h4>

        <form name="Info" method="post" action="register.php">
            <section class="mb-3">
     <div id="form-container" class="container">
         <div class="row">
                        <div class="col-3">
                        <div>
  <label style="font-size:5px; visibility:hidden;">اسم ولى الامر :</label>
</div></div> 
                    
                    </div>
    <div class="row">
            <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">المحافظة :</label><br>
<select class="form-select form-control" name="governorate" id="governorate" aria-label="Default select example">
  <option> --اختر--</option>
  <?php
       require_once 'conn.php';
       $query= "select * from governorate";
       $do= mysqli_query($conn,$query)or die('error'.mysqli_error($conn));
       while($row=mysqli_fetch_array($do)){
      echo '<option value="'.$row['name'].'">'.$row['name'].'</option>';
       }
       ?>
</select></div>
            <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">القسم :</label><br>
<select class="form-select form-control" name="qism" id="qism" aria-label="Default select example">
  <option> --اختر--</option>
  <?php
       require_once 'conn.php';
       $query= "select * from gov_dis";
       $do= mysqli_query($conn,$query)or die('error'.mysqli_error($conn));
       while($row=mysqli_fetch_array($do)){
      echo '<option value="'.$row['dis'].'">'.$row['dis'].'</option>';
       }
       ?>
</select></div>
                        <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">رقم البلاغ :</label>
  <input type="number" class="form-control" name="com_num" id="exampleFormControlInput1">
</div>
                            
                        </div>
<div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">تاريخ البلاغ :</label>
  <input type="date" class="form-control" name="com_date" id="exampleFormControlInput1">
</div></div>
            <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">اسم الطفل :</label>
  <input type="text" class="form-control" name="child_name" id="exampleFormControlInput1">
</div>
                            
                        </div>                
                       <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">تاريخ الميلاد :</label>
  <input type="date" class="form-control" name="child_birth" id="exampleFormControlInput1">
</div></div> 
              <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">النوع :</label><br>
<select class="form-select form-control" name="gender" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">ذكر</option>
  <option value="2">انثى</option>
</select></div>
                    
                        <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">اسم ولى الامر :</label>
  <input type="text" class="form-control" name="parent_name" id="exampleFormControlInput1">
</div></div> 
                    <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">رقم التليفون :</label>
  <input type="text" class="form-control" name="phone" id="exampleFormControlInput1">
</div></div>    
                           <div class="col-3">
                        <div class="mb-3 mt-2">
  <label for="exampleFormControlInput1" class="form-label">جهة الإحالة :</label>
  <input type="text" class="form-control" name="referrer" id="exampleFormControlInput1">
</div></div> 
                        <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">مصدر البيانات :</label><br>
<select class="form-select form-control" name="resource" aria-label="Default select example">
  <option> --اختر--</option>
    <option value="1">الاب</option>
     <option value="2">الام</option>
     <option value="3">الاتنين</option>
     <option value="4">الجد</option>
     <option value="5">الجدة</option>
     <option value="6">العم</option>
     <option value="7">العمة</option>
     <option value="8">الخال</option>
     <option value="9">الخالة</option>
     <option value="10">مسئول الدار</option>
     <option value="11">النيابة</option>  
</select></div>
                    
                  
              <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">المرحلة العمرية :</label><br>
<select class="form-select form-control" name="age" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">طفولة مبكرة</option>
  <option value="2">طفولة متأخرة</option>
 <option value="3">مراهقة</option>
</select></div>  
                        <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">الصف الدراسي :</label><br>
<select class="form-select form-control" name="education_level" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">قبل التعليم المدرسى</option>
  <option value="2">الابتدائى</option>
  <option value="3">الاعدادى</option>
   <option value="4">الثانوى</option> 
    <option value="5">متسرب</option>
    <option value="6">دمج</option>
    <option value="7">تربية فكرية</option>
    
</select></div>
              <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">نوع الخطر :</label><br>
<select class="form-select form-control" name="danger_type" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">خطر محدق</option>
  <option value="2">خطر متوسط</option>
  <option value="3">لا يوجد خطر</option>
</select></div>
                        
                   
   
         <div class="col-3 mt-2 ">
<label for="exampleFormControlInput1" class="form-label">صلة القرابة بين الوالدين :</label><br>
<select class="form-select form-control" name="relation" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">يوجد</option>
  <option value="2">لا يوجد</option>
</select></div>
         
         <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">عمل الأب :</label><br>
<select class="form-select form-control" name="father_work" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">موظف</option>
  <option value="2">اعمال حرة</option>
  <option value="3">لا يعمل</option>
    <option value="4">مسافر</option>
</select></div>
         <div class="col-3 mt-2 mb-3">
<label for="exampleFormControlInput1" class="form-label">الدخل الشهرى :</label><br>
<select class="form-select form-control" name="income" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">منخفض</option>
  <option value="2">متوسط</option>
  <option value="3">مرتفع</option>
</select></div>
         
         
         </div>

                </div>
                <hr>
            </section>
              <h4 class="container-fluid headOfPersonal mb-0 pb-0">نتائج الجلسة
            <p id="showHide" onclick="toggleForm()">
                <i class="fas fa-chevron-up"></i>
            </p>
        </h4>
                <section class="mb-3">
     <div id="form-container" class="container">
         <div class="row">
                        <div class="col-3">
                        <div>
  <label style="font-size:5px; visibility:hidden;">اسم ولى الامر :</label>
</div></div> 
                    
                    </div>
        <div class="row">
              <div class="col-3">
            <div class="form-check form-check-inline">
 <input class="form-check-input" type="hidden" name="clothes" value="0" id="clothes" checked>
  <input class="form-check-input" type="checkbox" name="clothes" value="1" id="clothes">
  <label class="form-check-label mr-2" for="clothes">
ملائمة الملابس </label>
</div>
            </div>
         <div class="col-3">
            <div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="drugs" value="0" id="drugs" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="drugs" value="1" id="drugs">
  <label class="form-check-label mr-2" for="drugs">
    مواد مخدرة او ادوية
  </label>
</div>
            </div>
            <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="mental_illness" value="0" id="mental_illness" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="mental_illness" value="1" id="mental_illness">
  <label class="form-check-label mr-2" for="mental_illness">
مرض نفسي او عقلى  </label>
</div>
            </div>
            
            <div class="col-3">
            <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="schizophrenia" value="0" id="schizophrenia" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="schizophrenia" value="1" id="schizophrenia">
  <label class="form-check-label mr-2" for="schizophrenia">
فصام  </label>
</div>
            </div>
            <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="emotional_disturbance" value="0" id="emotional_disturbance" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="emotional_disturbance" value="1" id="emotional_disturbance">
  <label class="form-check-label mr-2" for="emotional_disturbance">
اضطراب وجدانى  </label>
</div>
            </div>
        
              <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="worried" value="0" id="worried" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="worried" value="1" id="worried">
  <label class="form-check-label mr-2" for="worried">
قلق </label>
</div>
            </div>
              <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" value="0" name="developmental_disorder" id="developmental_disorder" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" value="1" name="developmental_disorder" id="developmental_disorder">
  <label class="form-check-label mr-2" for="developmental_disorder">
اضطراب نمائي </label>
</div>
            </div>
                 <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="cognitive_abilities" value="0" id="cognitive_abilities" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="cognitive_abilities" value="1" id="cognitive_abilities">
  <label class="form-check-label mr-2" for="cognitive_abilities">
امراض تعيق القدرات المعرفية  </label>
</div>
            </div>
        <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="response" value="0" id="response" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="response" value="1" id="response">
  <label class="form-check-label mr-2" for="response">
الاستجابة مع الفاحص  </label>
</div>
            </div>    
            <div class="col-3">
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="attention" value="0" id="attention" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="attention" value="1" id="attention">
  <label class="form-check-label mr-2" for="attention">
مستوى الانتباه  </label>
</div>
            </div>
            
      <div class="col-3">
            <div class="form-check form-check-inline">
    <input class="form-check-input" type="checkbox" name="realization" value="0" id="realization" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="realization" value="1" id="realization">
  <label class="form-check-label mr-2" for="realization">
ادراك الزمان و المكان </label>
</div>
            </div>      
       <div class="col-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="guidance" value="0" id="guidance" style="display:none;" checked>
  <input class="form-check-input" type="checkbox" name="guidance" value="1" id="guidance">
  <label class="form-check-label mr-2" for="guidance">
الارشاد الاسرى  </label>
</div>
            </div>     
            
            
         </div>
         <div class="row">
          <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">الاختبارات النفسية :</label><br>
<select class="form-select form-control" name="mental" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">توحد</option>
  <option value="2">ذكاء</option>
  <option value="3">تكيف</option>
    <option value="4">قلق</option>
    <option value="5">اكتئاب</option>
    <option value="6">صعوبات تعلم</option>
</select></div>
        
   
           
        
         <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">المزاج :</label><br>
<select class="form-select form-control" name="mood" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">سعيد</option>
  <option value="2">حزين</option>
  <option value="3">عادى</option>
    <option value="4">مترقب</option>
    <option value="5">خائف</option>
    <option value="6">عدوانى</option>
    <option value="7">عنيف</option>
</select></div>
            <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">تقدير الذكاء :</label><br>
<select class="form-select form-control" name="intelligence" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">50</option>
  <option value="2">65</option>
  <option value="3">70</option>
    <option value="4">85</option>
    <option value="5">90</option>
    <option value="6">95</option>
    <option value="7">100</option>
    <option value="8">110</option>
</select></div>
            <div class="col-3 mt-2">
<label for="exampleFormControlInput1" class="form-label">الخدمة المقدمة :</label><br>
<select class="form-select form-control" name="service" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">تخاطب</option>
  <option value="2">تعديل سلوك</option>
  <option value="3">جلسة نفسية</option>
    <option value="4">تنمية مهارات</option>
    <option value="5">صعوبات تعلم</option>
    <option value="6">اختبارات</option>
    <option value="7">كشف مخ و اعصاب</option>
    <option value="8">ادوية</option>
    <option value="9">تقييم نفسي</option>
    <option value="10">استشارة تليفونية</option>
</select></div>
          
    
         <div class="col-3 mt-2 mb-3">
<label for="exampleFormControlInput1" class="form-label">التشخيص :</label><br>
<select class="form-select form-control" name="diagnosis" aria-label="Default select example">
  <option> --اختر--</option>
  <option value="1">صعوبات تعلم</option>
  <option value="2">مشكلات مراهقة</option>
  <option value="3">تحرش جنسي</option>
  <option value="4">اعتداء جنسي</option>
  <option value="5">توحد</option>
  <option value="6">اضطراب اللغة</option>
  <option value="7">اضطراب المسلك</option>
  <option value="8">اكتئاب</option>
  <option value="9">قلق</option>
  <option value="10">وسواس قهرى</option>
  <option value="11">تأخر عقلى بسيط</option>
  <option value="12">تأخر عقلى متوسط</option>
  <option value="13">تأخر عقلى حاد</option>
  <option value="14">ذهان</option>
</select></div></div>
         
                    </div>
            </section>
            <button class="btn btn-lg text-white submitButton" id="submitB" type="submit" name="submit"
                onclick="return confirm('هل جميع البيانات صحيحة؟');">حفظ  </button>
            
            
        </form>
       </section>
       
       
       
   <footer>
        <p style="font-size:19px;">&copy;
            2021 جميع الحقوق محفوظة للمجلس القومى للطفولة و الامومة. </p>
    </footer>
   
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
    new WOW().init();
        </script>
</body>

</html>
<?php
      }?>