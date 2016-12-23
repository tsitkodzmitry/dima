<?php 
require_once('temples/top.php');
require_once('config/config.php');


if($_GET[url]){
	$file=$_GET[url];
}
else{
	$file='index';
}
#print($file);


#if (!$result){exit('error result');}
#if (mysql_connect_error){exit('error');}



#echo "<pre>";
#print($row);
#echo "</pre>";


 ?>
			<div class='fon2'>
				<div class='blok1'>
					<h3>Ауктуально</h3>
					<nav class='menu'>
						<?php
							$objmenu=mysql_query("SELECT * FROM maintexts WHERE leftmenu='1'");
							while ($menu = mysql_fetch_array($objmenu)){
								echo "<a href='index.php?url=".$menu['url']."'>";
								echo $menu['name'];
								echo "</a>";
							}

						?>
					</nav>					
					<h3>Предметы</h3>
					<nav class='menu'>
						<a href='index.php?url=matematika'>Математика</a>
						<a href='index.php?url=russkii'>Русский язык</a>
						<a href='index.php?url=biologija'>Биология</a>
						<a href='index.php?url=fizika'>Физика</a>
						<a href='index.php?url=ximija'>Химия</a>
						<a href='index.php?url=geogrefija'>География</a>
						<a href='index.php?url=trud'>Труд</a>
					</nav>
				</div>
				<div class='blok2'>
					<?php
					$result=mysql_query("SELECT * FROM maintexts WHERE url='$file'");
						while ($row = mysql_fetch_array($result)){
							echo"<div class='main'>
									<h2>".$row['name']."</h2>
									<p>".$row['body']."</p>
									</div>";
						}
					?>
				</div>
				<div class='blok3'>
					<h3>Вход в сайт</h3>
					<div class='ban'>
						<h4><a href='reg.php'>Регистрация</a></h4>
					</div>
					<h3>Полезные сайты</h3>
                    <div class='ban'>
						<ul>
                            <li><a href='www.onliner.by'>Onliner.by</a></li>
                            <li><a href='www.tut.by'>Tut.by</a></li>
                            <li><a href='www.mail.ru'>Mail.ru</a></li>
                            <li><a href='www.gmail.com'>Gmail.com</a></li>
                            <li><a href='www.kufar.by'>Kufar.by</a></li>
                            <li><a href='www.driver2.ru'>Drive2.ru</a></li>
                        </ul>
                     </div>
                   	<h3>Новости</h3>
                    <div class='ban'>
						<div class='news'>
                            <h4><a href='#'>01-12-2016 Награждение детей</a></h4>
							В УО СШ-1231 Выйграли олимпиаду по шашкам 1 место заняла Папашка Алексей
                        </div>
                        
                        <div class='news'>
                            <h4><a href='#'>02-12-2016 Коммунальные услуги</a></h4>
							Изменится формат коммунальных платежей      
                        </div>
                        
                        <div class='news'>
                            <h4><a href='#'>03-12-2016 АКЦИЯ ЛУКОЙЛ</a></h4>
							с 15 декабря покупка выше 25 литров насчитываются двойные баллы
                        </div>
                       
                        <div class='news'>
                          <h4><a href='#'>04-12-2016 Хороший поступок от Мингорисполкома</a></h4>
							В ЯСЛИ-749 Подарили детям к Новому Году 20 планшетов.
                        </div>
					</div>
				</div>
			</div>
		</div>
<?php require_once('temples/bottom.php'); ?>