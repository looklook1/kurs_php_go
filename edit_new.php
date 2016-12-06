<?php
    require 'config.inc';
    include 'lib/function.inc';
    require 'lib/db_connect.inc';
    require 'lib/aktualnosci.inc';
    require 'lib/zdjecia.inc';
    
    //echo "User: ",__UNAME__,"<br>";
    //echo "Passwd: ",__PASSWD__,"<br>";
    //echo "Passwd: ",__DB_NAME__,"<br>";
    
    $connectDB = connectDB(__HOST__, __UNAME__, __PASSWD__, __DB_NAME__, __DB_CHARSET_SET__);

    if($_GET["action"] == "save_new") {
        saveNew($connectDB, $_POST);
    }
    
    $oneNew = getOneNew($connectDB, $_GET["id_new"]);
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
        <title>Strona WWW - dodawanie aktualności</title>
    </head>
    <body>
        <h3>Podgląd aktualności</h3>
        <section>
            <article id="article_">
                <h4 id="title"><?=$oneNew["tytul_aktualnosci"];?></h4>
                <p id="header"><?=$oneNew["naglowek_aktualnosci"];?></p>
                <span id="data"><?=$oneNew["data_publikacji_aktualnosci"];?></span>
            </article>
        </section>
        
        <h3>Edycja aktualności</h3>
        <form action="edit_new.php?action=save_new&id_new=<?=$oneNew["id_aktualnosci"];?>" method="post">
            <input type="hidden" name="id_new" value="<?=$oneNew["id_aktualnosci"];?>">
            Tytuł aktualności<br>
            <input value="<?=$oneNew["tytul_aktualnosci"];?>" style="width: 450px;" type="text" name="tytul_aktualnosci" min="1" maxlength="255" required="required"><br>
            Nagłówek aktualności<br>
            <textarea style="width: 450px;" name="naglowek_aktualnosci" cols="75" rows="5" required="required">
                <?=$oneNew["naglowek_aktualnosci"];?>
            </textarea><br>
            <button type="submit" value="Zapisz aktualność">Zapisz aktualność</button>
        </form>
    </body>
</html>
