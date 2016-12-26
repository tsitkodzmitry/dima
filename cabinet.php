<?php 
require_once('temples/top.php');
if(!$_SESSION['id']){echo 'Ощибка входа!';}else
	{
	?>

<form method='post' action='cabinet.php'>
  <div>
    <label>Класс</label>
    <input type="text" class="form-control" id="class">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Нов</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">Вайл</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Вы Согласен?</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> YES
    </label>
  </div>
  <button type="submit" class="btn btn-default">ОК</button>
</form>


<?php 
	}
require_once('temples/bottom.php'); ?>