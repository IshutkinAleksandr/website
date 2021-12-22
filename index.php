
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
<tr>
   <th>Имя</th>
   <th>Фамилия</th>
   <th>Страна</th>
   <th>Вид спорта</th>
</tr>
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
  ?>
  <?php
  if (isset($_POST["name"])) {
    $sql = mysqli_query($link, "INSERT INTO `user` (`surname`, `name`,`country_id`,`sport_id`) 
    VALUES ('{$_POST['surname']}', '{$_POST['name']}','{$_POST['countries']}', '{$_POST['sports']}')");
    if ($sql) {
      echo '<p>Данные успешно добавлены в таблицу.</p>';
    } else {
      echo '<p>Произошла ошибка: ' . mysqli_error($link) . '</p>';
    }
  }
  ?>
  <?
   $db_select = mysqli_select_db ($link, $db_name);
   if (!$db_select) {
   echo "Не удалось выбрать БД MySQL.";
   exit;
   }
   $sqli = "SELECT * FROM `sports`";
   $result_select = mysqli_query($link, $sqli);

   $sq = "SELECT * FROM `countries`";
   $result_selec = mysqli_query($link, $sq);
  ?>
 <form action="" method="post"> 
 <label for="surname">Фамилия:</label> <br> <input type="text" name="surname"  > <br>
 <br> <label for="name">Имя:</label> <br> <input type="text" name="name"  > <br>
 <br> <select name = 'sports'>
 <option value='0'>Вид спорта</option>
 <? while($object = mysqli_fetch_object($result_select)){
echo "<option value = '$object->id' > $object->name </option>";
}?>
 </select></p>
 <select name = 'countries'>
 <option value='0'>Страна</option>
 <? while($object = mysqli_fetch_object($result_selec)){
echo "<option value = '$object->id' > $object->name </option>";
}?>
 </select></p>

 <p><input type="submit" value="Отправить" name="submit"> </p>
 </form> 
  <?
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $sql = mysqli_query($link, 'SELECT user.*, countries.name as country, sports.name as sport FROM user 
    JOIN countries ON user.country_id = countries.id
    JOIN sports ON user.sport_id = sports.id ');
    
    foreach (($sql) as $row) {
      echo "<tr>";
      echo "<td>" .$row["surname"]. "</td>";
      echo "<td>" .$row["name"]. "</td>";
      echo "<td>" .$row["country"]. "</td>";
      echo "<td>" .$row["sport"]. "</td>";
      echo "</tr>";
      }
    ?> 
</tbody>
</table>

