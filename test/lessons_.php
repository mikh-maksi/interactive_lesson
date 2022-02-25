<?php
include "../config.php";
include "../connect.php";

if (isset($_GET['lesson_id']))
    $lesson_id = $_GET['lesson_id'];
else
    $lesson_id = 1;
// Список всех уроков
// Список всех заданий в уроке
// Список всех учеников в уроке



// $sql = 'SELECT * FROM action WHERE lesson_id = '.$lesson_id;   
//             $ids = array();
//             if ($result = $mysqli->query($sql)) {
//               while($row = $result->fetch_array() ){
                    
//                     echo ($row[0].' '.$row[1].' '.$row[2].' '.$row[3].' '.$row[4].' '.$row[5].'<br>');

//                 }}


$sql = 'SELECT max(lesson_id) FROM action';   
if ($result = $mysqli->query($sql)) {
    while($row = $result->fetch_array() ){                
        $n = $row[0];
        echo ($row[0].'<br>');
    }}
    echo $n;
echo "-------<br>";
/*
$arr_n = [];
for ($i=1;$i<=$n;$i++){
    // Получаем максимальное количество заданий в уроке
    $sql = "SELECT task_number FROM lessons WHERE id = $i"; 
    if ($result = $mysqli->query($sql)) {
    while($row = $result->fetch_array() ){                
        echo ($row[0].'<br>');
        array_push($arr_n,$row[0]);
    }}
}

*/
$arr_users = [];
$sql = "SELECT student_id FROM action WHERE lesson_id = $lesson_id"; 
    if ($result = $mysqli->query($sql)) {
    while($row = $result->fetch_array() ){                
        echo ($row[0].'<br>');
        array_push($arr_users,$row[0]);
    }}

// Массив с id пользователей на уроке.
$arr_users=  array_unique($arr_users);
print_r($arr_users);

foreach($arr_users as  $value){
    echo ($value."<br>");
}
echo "<br>";


// Получаем кол-во тасков в этом уроке.
$sql = "SELECT task_number FROM lessons WHERE id = $lesson_id"; 
if ($result = $mysqli->query($sql)) {
    $row = $result->fetch_array();                 
    $task_number = $row[0];
}

$j = 1;

$arr_action = array();
print_r($arr_action);
foreach ($arr_users as $value){
   $arr_action_user = array();
    for ($i=1;$i<=$task_number;$i++){
        // echo ($i." ");
        $sql = "SELECT * FROM action WHERE task_id = $i AND lesson_id = $lesson_id AND student_id = $value"; 
        if ($result = $mysqli->query($sql)) {
            $val_out = 0;
            $row = $result->fetch_array();
                if (isset($row[0]))
                    $val_out= 1;
            array_push($arr_action_user,$val_out);
        }
    }
    echo "<br>";
    $j = $j +1;
    array_push($arr_action,$arr_action_user);
}
print_r($arr_action);
echo (json_encode($arr_action));
?>