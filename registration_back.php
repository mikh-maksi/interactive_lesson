<?php
# Получить JSON как строку
    $json_str = file_get_contents('php://input');

# Получить объект
    $json_obj = json_decode($json_str);
    $json_obj->answer = "Yes";
    fwrite($fp, $json_str);

    $fp = fopen('users.txt', 'a+');

    if (isset($json_obj->name))
        $name = $json_obj->name;
    else
        $name = "name";
    if (isset($json_obj->course_id))
        $course_id = $json_obj->course_id;
    else
        $course_id = "0";
    if (isset($json_obj->task_id))
        $task_id = $json_obj->task_id;
    else
        $task_id = 0;

    include "config.php";
    include "connect.php";
    $sql = "INSERT INTO users (name, course_id) VALUES ('$name','$course_id')";

    //echo $sql;
    if (!$result = $mysqli->query($sql)) 
{  //echo $mysqli->error;
/*$result->close(); */}



    // $mytext = "$json_str.\r\n"; // Исходная строка
    // $mytext = "$sqlSelect.\r\n"; // Исходная строка
    $mytext = "$name-$tel-".$arr[0]." ".$arr[1]."\r\n"; // Исходная строка
    $test = fwrite($fp, $mytext); // Запись в файл
    // if ($test) echo 'Данные в файл успешно занесены.';
    // else echo 'Ошибка при записи в файл.';
    fclose($fp); //Закрытие файла
    //print_r($json_obj);
    // include "config.php";
    // include "connect.php";
    header('Access-Control-Allow-Origin: *');
    header('Content-type: application/json; charset=utf-8');
    
//        echo $st->studentcard;
//        echo $st->firstname;
//        echo $st->lastname;

//    $org->dbIn();
    if (json_encode($json_obj) == 'null'){
        $ob = (object) array('1' => 'foo');;
        echo (json_encode($ob));
    }else{
        echo(json_encode($json_obj));
    }

 ?>