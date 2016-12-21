<?php
$dblocation='localhost';
$dbname='videoyrok';
$dbuser='root';
$dbpass='';
$dbport=3306;
#$dbcon=mysql_connect($dblocation,$dbport,$dbuser,$dbpass,$dbname);
$dbcon=mysql_connect($dblocation,$dbuser,$dbpass,$dbport);
if(!$dbcon){
	exit('error connect');
}