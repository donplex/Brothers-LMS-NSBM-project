<?php
define('DSN', 'mysql:host=localhost;dbname=nav_footer');
define('USERNAME', 'root');
define('PASSWORD', '');

try{
    $DB = new PDO(DSN,USERNAME, PASSWORD);
    
} catch (Exception $e) {
    echo $e->getMessage();
}

try{
    $sql = "SELECT *FROM navigation";
    $result = $DB->query($sql);
    $row_count = $result->rowCount();
    if($row_count){
        $rows = $result->fetchAll(PDO::FETCH_ASSOC);
    }
    
    
} catch (Exception $e) {
    echo $e->getMeassage;
}

$items = $rows; 

?>



<!DOCTYPE html>
<html>
<head>
	<title></title>
        <link rel="stylesheet" type="text/css" href="navigation1.css"/>
</head>
<body>
<?php
$items = $rows;
$id = '';

echo "<ul class='multidrop'>";
foreach($items as $item){
    if($item['parent_id']==0){
        $link = $item['link'];
        echo "<li><a href=$link>".$item['name']."</a>";
        $id = $item['id'];
        sub($items,$id);
        echo "</li>";
    }
    
}
echo "</ul>";


function sub($items, $id){
echo "<ul>";
    foreach ($items as $item){
        if($item['parent_id']== $id){
            echo "<li><a href='#'>".$item['name']."</a>";
            //sub($items, $item['id']);
            echo "</li>";
        }
    
    }
    echo "</ul>"; 
}
   

?>   
    
    
</body>
</html>