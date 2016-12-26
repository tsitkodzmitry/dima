<?php
require_once('temples/top.php');
require_once('config/config.php');
if($_POST){
	$error=[];
	$login=$_POST['login'];
	$pass=$_POST['password'];
	
	$sql="SELECT `id`,`login`,`pass` FROM users WHERE login='$login' AND pass='$pass'";
	if (!mysql_query($sql)){exit('Ощибка запроса!');}
	$row = mysql_fetch_array(mysql_query($sql));
	if (!$row['id']){
		echo ('Нет такого пользователя!');
			
		}
		else{
			$_SESSION['id']=$row['id'];
				echo"
					<script>
					location.href='index.php';
					</script>
					";
			}
	
	
	
	#$sql="SELECT `id`,`login`,`pass` FROM users WHERE login='$login'";
	#if (!mysql_query($sql)){exit('Ощибка запроса!');}
	#$row = mysql_fetch_array(mysql_query($sql));
	#if($row['id']){
	#	if($row['pass']==$pass) {
	#		echo('Пароль совподает');
	#		}
	#		else
	#		{
	#			$error[]='Не правильный пароль!';
	#		}
	#if($error){
	#	foreach($error as $one){
	#		echo "<div style='color:red'>
	#		$one
	#		</div>";
	#}}
	#}
	#else
	#{
		#$pass=MD5($pass);
	#	$sql = "INSERT INTO `users`(`email`, `login`, `pass`, `datereg`, `lastvisit`) 
	#	VALUES ('$email','$login','$pass',NOW(),NOW())";
	#	if(!mysql_query($sql)){
	#							exit('Ошибка при добавлении данных!');
	#						}
	#						else
	#						{
	#							echo"
	#							<script>
	#							location.href='index.php';
	#							</script>
	#							";
	#						}
	#}
}
?>
	<div class='fon2'>
<div class='blok2'>				
<form method='post' action='login.php'>
  <div>
	<label>Логин: </label><input type='text' name='login' id='login'/>
  </div>
  <div>
	<label>Пароль: </label><input type='password' name='password' id='password'/>
  </div>
  <button type="submit">Вход</button>
</form>
</div>
