<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);


function createList($size){
    $list = [];
    for($i = 0; $i < $size; $i++ ){
        array_push($list, rand(1,1000000));
    }
    return $list;
}
$teste = createList(2000000);
//sort($teste);
//echo count($teste);
header("Content-type: application/json");
echo '{"msg": "oi"}';
?>