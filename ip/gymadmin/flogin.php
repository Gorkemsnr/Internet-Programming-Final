<html>
			<head>
			<title>Giriş Yap</title>
			<link rel="stylesheet"type="text/css" href="fstyle.css">
			</head>
	<body>
		<div class="login">
			<div class="login-screen">
				<div class="app-title">
					<h1>Giriş Yap</h1>
				</div>
				<form action="fislem.php" method="post">
				<div class="login-form">
						<div class="control-group">
							<input type="text" name="username" class="login-field" placeholder="kullanıcı Adı" id="login-name">
							<label class="login-field-icon fui-user" for="login-name"></label>
						</div>
					<div class="control-group">
					<input type="password" name="password" class="login-field" placeholder="Şifre" id="login-pass">
					<label class="login-field-icon fui-user" for="login-pass"></label>
					</div>
					<button href="index.php" name="giris" class="btn btn-primary btn-large btn-block">Giriş Yap</button>
					
				</div>
				</form>
				<a href="fkayit.php"><button class="btn btn-primary btn-large btn-block">Kayıt Ol</button></a>
			</div>
		</div>
	</body>
</html>