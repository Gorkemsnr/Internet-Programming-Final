<?php

require 'fbaglan.php';


if(isset($_POST['fkayit'])){
	$username=$_POST['username'];
	$password=$_POST['password'];
	$password_again=@$_POST['password_again'];
	
	if(!$username){
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
			header('Refresh:2;flogin.php');
		}else{
			echo "bir hata oluştu";
		}
	}
}
if(isset($_POST['giris'])){
	$username=$_POST['username'];
	$password=$_POST['password'];
	if(!$username){
		echo "kullanıcı adınızı giriniz";
	}elseif(!$password){
		echo "şifenizi girin";
	}else{
		$kullanici_sor =$db->prepare('SELECT * FROM users WHERE user_name=? AND user_password=?');
		$kullanici_sor->execute([
			$username, sha1($password)
		]);
		 $say=$kullanici_sor->rowCount();
		if($say==1){
			session_unset();
			$_SESSION['username']=$username;
			echo "başarıyla giriş yaptınız,yönlendiriliyorsunuz";
			header('Refresh:2;index.php');
		}else{
			echo "Bir hata oluştu tekrar kontrol edin";
		}
	}
}
?>