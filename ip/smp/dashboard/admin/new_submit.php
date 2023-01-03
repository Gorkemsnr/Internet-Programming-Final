<?php
require '../../include/db_conn.php';
page_protect();

 $memID=$_POST['m_id'];
 $uname=$_POST['u_name'];
 $stname=$_POST['street_name'];
 $city=$_POST['city'];
 $state=$_POST['state'];
 $gender=$_POST['gender'];
 $dob=$_POST['dob'];
 $phn=$_POST['mobile'];
 $email=$_POST['email'];
 $jdate=$_POST['jdate'];
 $plan=$_POST['plan'];

//kullanıcı tablosuna veri girişi yapıyoruz
$query="insert into users(username,gender,mobile,email,dob,joining_date,userid) values('$uname','$gender','$phn','$email','$dob','$jdate','$memID')";
    if(mysqli_query($con,$query)==1){
      //Kullanıcı tarafından seçilen planın bilgilerini al
      $query1="select * from plan where pid='$plan'";
      $result=mysqli_query($con,$query1);

        if($result){
          $value=mysqli_fetch_row($result);
          date_default_timezone_set("Asia/Calcutta"); 
          $d=strtotime("+".$value[3]." Months");
          $cdate=date("Y-m-d"); //Geçerli tarih
          $expiredate=date("Y-m-d",$d); //plandan geçerli tarihe geçerlilik alma ekleme
          //karşılık gelen kullanıcı kimliğinin enrolls_to tablosuna ekleme
          $query2="insert into enrolls_to(pid,uid,paid_date,expire,renewal) values('$plan','$memID','$cdate','$expiredate','yes')";
          if(mysqli_query($con,$query2)==1){

            $query4="insert into health_status(uid) values('$memID')";
            if(mysqli_query($con,$query4)==1){

              $query5="insert into address(id,streetName,state,city) values('$memID','$stname','$state','$city',)";
              if(mysqli_query($con,$query5)==1){
               echo "<head><script>alert('Member Added ');</script></head></html>";
               echo "<meta http-equiv='refresh' content='0; url=new_entry.php'>";
              }
              else{
                  echo "<head><script>alert('Member Added Failed');</script></head></html>";
                 echo "error: ".mysqli_error($con);
                 //enrolls_to tablosuna ekleme işlemi başarısız olursa, kullanıcıların kaydı siliniyor
                 $query3 = "DELETE FROM users WHERE userid='$memID'";
                 mysqli_query($con,$query3);
              }
            }
             
            else{
               echo "<head><script>alert('Member Added Failed');</script></head></html>";
              echo "error: ".mysqli_error($con);
               //enrolls_to tablosuna ekleme işlemi başarısız olursa, kullanıcıların kaydı siliniyor
                $query3 = "DELETE FROM users WHERE userid='$memID'";
                mysqli_query($con,$query3);
            }
            
          }
          else{
            echo "<head><script>alert('Member Added Failed');</script></head></html>";
            echo "error: ".mysqli_error($con);
            //enrolls_to tablosuna ekleme işlemi başarısız olursa, kullanıcıların kaydı siliniyor
             $query3 = "DELETE FROM users WHERE userid='$memID'";
             mysqli_query($con,$query3);
          }

         
        }
        else
        {
          echo "<head><script>alert('Member Added Failed');</script></head></html>";
          echo "error: ".mysqli_error($con);
           //Plan bilgilerinin alınması başarısız olursa kullanıcıların kaydı siliniyor
          $query3 = "DELETE FROM users WHERE userid='$memID'";
          mysqli_query($con,$query3);
        }

    }
    else{
        echo "<head><script>alert('Member Added Failed');</script></head></html>";
        echo "error: ".mysqli_error($con);
      }
?>
