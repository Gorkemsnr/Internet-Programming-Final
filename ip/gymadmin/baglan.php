<?php

try{
	$db=new PDO("mysql:host=localhost;dbname=admin; charset=utf8",'root','');
	//echo "veritabanı bağlantısı başarılı";
}
catch(exception $e)
{
	echo$e->getMessage();
}
?>