<?php 
session_start();
require_once('config/config.php');
if($_SESSION['id']){
	$sql="SELECT `email`,`login`,`datereg`,`lastvisit` FROM users WHERE id=".$_SESSION['id'];
	if (!mysql_query($sql)){exit('Ощибка запроса!');}
	$auth_user = mysql_fetch_array(mysql_query($sql));
	
} 
?>
<!Doctype html>
<html>
	<head>
		<meta charset='unf-8'>
		<title>Site Titko Dzmitry</title>
		<meta name='descripttion' content='Site description'>
		<meta name='keywords' content='Site keywords'>
		<link type='text/css' rel='stylesheet' href='media/css/style.css'/>
	</head>
	<body>
		
		<header class='top'>
			<div><h1>Титко Дмитрий Игоревич</h1><br><span>Техник-программист</span></div>
			<img src='media/img/logo.gif'/>
		</header>
		<div class='fon1'>		
			<nav class='topmenu'>
				<a href='index.php?url=index'>Главная</a>
				<a href='index.php?url=news'>Новости</a>
				<a href='index.php?url=nas'>О Нас</a>
				<a href='index.php?url=predmet'>Предметы</a>
				<a href='index.php?url=teacher'>Учителя</a>
				<a href='index.php?url=krushki'>Кружки</a>
				<a href='index.php?url=contacts'>Контакты</a>
			</nav>	
			Кабинет! <?=($auth_user['name'])? $auth_user['name']:'';?>