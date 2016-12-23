<?php
require_once('temples/top.php');
require_once('config/config.php');
if($_POST){
	$error=[];
	$login=$_POST['login'];
	$email=$_POST['email'];
	$pass=$_POST['password'];
	$cpass=$_POST['copypassword'];
	
	if($pass!=$cpass){
		$error[]='Пароль не совпадают';
	} 
	$sql="SELECT `id`,`login` FROM users WHERE login='$login'";
	#if(!mysql_query($sql)){exit('Ощибка запроса!');}
	#
	if (!mysql_query($sql)){exit('Ощибка запроса!');}
	$row = mysql_fetch_array(mysql_query($sql));
	if($row['id']){
		$error[]='Пользователь с такими имени уже есть';
	}
	
	if($error){
		foreach($error as $one){
			echo "<div style='color:red'>
			$one
			</div>";
		}
	}
	else
	{
		#$pass=MD5($pass);
		$sql = "INSERT INTO `users`(`email`, `login`, `pass`, `datereg`, `lastvisit`) 
		VALUES ('$email','$login','$pass',NOW(),NOW())";
		if(!mysql_query($sql)){
								exit('Ошибка при добавлении данных!');
							}
							else
							{
								echo"
								<script>
								location.href='index.php';
								</script>
								";
							}
	}
}
?>
<form method='post' action='reg.php'>
  <div>
	<label>Логин: </label><input type='text' name='login' id='login'/>
  </div>
  <div>
	<label>Email: </label><input type='email' name='email' id='email'/>
  </div>
  <div>
	<label>Пароль: </label><input type='password' name='password' id='password'/>
  </div>
  <div>
	<label>Повтор пароль: </label><input type='password' name='copypassword' id='copypassword'/>
  </div>  
  <button type="submit">Регистрация</button>
</form>
<?php require_once('temples/bottom.php'); ?>