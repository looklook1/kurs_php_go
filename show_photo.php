<?php
    require 'config.inc';
    include 'lib/function.inc';
    require 'lib/db_connect.inc';
    require 'lib/zdjecia.inc';
    
    //echo "User: ",__UNAME__,"<br>";
    //echo "Passwd: ",__PASSWD__,"<br>";
    //echo "Passwd: ",__DB_NAME__,"<br>";
    
    $connectDB = connectDB(__HOST__, __UNAME__, __PASSWD__, __DB_NAME__, __DB_CHARSET_SET__);
    $onePhoto = getOnePhoto( $connectDB, $_GET["idPhoto"] );
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
        <title>Strona WWW - Zdjęcia</title>
        <style>
            span {
                display: inline-block;
                width: 100%;
                text-align: left;
                font-style: italic;
                font-size: 12px;
                color: red;
            }
            
            img {
                border-radius: 15px 15px 15px 15px;
            }
            
            #zdjecie {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h3>Jedno zdjecie</h3>
        <section id="zdjecie">
            <?php if($onePhoto == 0) : ?>
                <span>Brak zdjecia</span>
            <?php else : ?>
            <figure>
                <img alt="<?=$onePhoto["tytul_zdjecia"];?>" src="<?=__URL__?>zdjecia/<?=$onePhoto["nazwa_pliku_zdjecia"];?>">
                <figcaption><?=$onePhoto["tytul_zdjecia"];?></figcaption>    
            </figure>
            <?php endif; ?>
        </section>
    </body>
</html>