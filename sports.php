<!DOCTYPE html>
	<html lang="ru">
	<head>
    <meta charset="utf-8">
    <title> Медальный зачет Олимпийских игр в Симкино 3042 </title>
    <link rel="stylesheet" href="style.css">
    </head>
    <body>
  <header>
      <h1>Медальный зачет Олимпийских игр в Симкино 3042</h1>
  </header>
 <table>
<thead>
</thead>
<tbody>
<?php
  $host = 'localhost';  
  $user = 'root';    
  $pass = '1234'; 
  $db_name = 'medallist';   
  $link = mysqli_connect($host, $user, $pass, $db_name); 
  if (!$link) {
    echo 'Не могу соединиться с БД. Код ошибки: ' . mysqli_connect_errno() . ', ошибка: ' . mysqli_connect_error();
    exit;
  }
  if (isset($_POST["name"])) {
    $sql = mysqli_query($link, "INSERT INTO sports (`name`) VALUES ('{$_POST['name']}')");
    if ($sql) {
      echo '<p>Данные успешно добавлены в таблицу.</p>';
    } else {
      echo '<p>Произошла ошибка: ' . mysqli_error($link) . '</p>';
    }
  }
  ?>
  <form action="" method="post"> 
  <p>Вид спорта: <br> <input type="text" name="name"  > </p>
  <p><input type="submit" value="Отправить" name="submit"> </p>
  </form> 
</tbody>
</table>