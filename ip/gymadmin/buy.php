<?php
require 'baglan.php';
session_start();
if(!isset($_SESSION['username'])){

  header('Refresh:2; /ip/gymadmin/admin-login.php');
  echo "satın almak için giriş yapınız, yönlendiriliyorsunuz";
}

if(isset($_SESSION['username'])) {
	$username = $_SESSION['username'];
	echo "set";
	echo $_SESSION['username'];

}
	if(isset($_POST[ 'price1'])){
	
	$price1 = $_POST['pricefp1'];
	echo $price1;

		$sorgu = $db->prepare('INSERT INTO payments SET amount=? , username=?');
		$ekle = $sorgu->execute([
		$price1,$username
		]);
		if($ekle){
			echo "kayıt başarıyla gerçekleşti yönlendiriliyorsunuz";
			header('location: login.php');
		}else{
			echo "bir hata oluştu";
		}


}
if(isset($_POST[ 'price2'])){
	$price2 = $_POST['pricefp2'];

	echo $price2;

		$sorgu = $db->prepare('INSERT INTO payments SET amount=? , username=?');
		$ekle = $sorgu->execute([
		$price2,$username
		]);
		if($ekle){
			echo "kayıt başarıyla gerçekleşti yönlendiriliyorsunuz";
			header('location: login.php');
		}else{
			echo "bir hata oluştu";
		}
}

if(isset($_POST['price3' ])){

	$price3 = $_POST['pricefp3'];
	echo $price3;

		$sorgu = $db->prepare('INSERT INTO payments SET amount=? , username=?');
		$ekle = $sorgu->execute([
		$price3,$username
		]);
		if($ekle){
			echo "kayıt başarıyla gerçekleşti yönlendiriliyorsunuz";
			header('location: login.php');
		}else{
			echo "bir hata oluştu";
		}
	/*if(!$username){
		echo "lütfen kullanıcı adınızı giriniz";
	}elseif(!$password || !$password_again){
		echo "lütfen şifrenizi girin";
	}elseif($password !=$password_again){
		echo "girdiğiniz şifre aynı değil";
	}else{
		$sorgu = $db->prepare('INSERT INTO users SET user_name=?,user_password=?');
		$ekle = $sorgu->execute([
		$username, sha1($password)
		]);
		if($ekle){
			echo "kayıt başarıyla gerçekleşti yönlendiriliyorsunuz";
			header('Refresh:2;login.php');
		}else{
			echo "bir hata oluştu";
		}
	}
	*/
}


?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="buy.css">
</head>
<body>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">

        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
           

            <div class="row">
            
            
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>

        </div>
       
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>



</body>
</html>