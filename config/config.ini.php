<?php
$sdd_db_host='localhost';//Имя хоста
$sdd_db_name='dima';//Название бд
$sdd_db_user='root';//Пользователь
$sdd_db_pass='';//Пароль
//Подключение
#if(!@mysql_connect($sdd_db_host,$sdd_db_user,$sdd_db_pass)){
#	exit('error connect');
#}
@mysql_connect($sdd_db_host,$sdd_db_user,$sdd_db_pass);
@mysql_select_db($sdd_db_name);//Выбор базы
mysql_query ("set_client='utf8'");//Следующие 4 строки решают проблему с кодировкой.
mysql_query ("set character_set_results='utf8'");
mysql_query ("set collation_connection='utf8_general_ci'");
mysql_query ("SET NAMES utf8");