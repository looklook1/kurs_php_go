<?php
    require 'config.inc';
 
    include 'lib/function.inc';
    require 'lib/db_connect.inc';
    require 'lib/aktualnosci.inc';
    
    //echo "User: ",__UNAME__,"<br>";
    //echo "Passwd: ",__PASSWD__,"<br>";
    //echo "Passwd: ",__DB_NAME__,"<br>";
    
    $connectDB = connectDB(__HOST__, __UNAME__, __PASSWD__, __DB_NAME__);
?>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Strona WWW</title>
    </head>
    <body>
        <h3>Aktualności</h3>
        <?php
            debug(fetchAllNews($connectDB));
        ?>
    </body>
</html>
