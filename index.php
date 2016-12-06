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

    if($_GET["action"] == "add_new") {
        addNew($connectDB, $_POST);
    }
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
        <title>Strona WWW - strona główna aktualności i galeria</title>
        <style>
            span {
                display: inline-block;
                width: 100%;
                text-align: right;
                font-style: italic;
                font-size: 12px;
            }
            
            img {
                height: 150px;
                margin: 5px;
                border-radius: 15px 15px 15px 15px;
                opacity: 0.5;
            }
            
            img:hover {
                opacity: 1;
            }
            
            #gallery {
                text-align: center;
            }
            
            a {
                text-decoration: none;
            }
            
            footer {
                margin-top: 15px;
                text-align: center;
                border-top: 2px gray dashed;
            }
            
            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h3>Aktualności</h3>
        <nav>
            <a href="index.php?sort=ASC">Sortowowanie od najstarszej</a> 
            | 
           <a href="index.php?sort=DESC">Sortowowanie od najnowszej</a> 
        </nav>
        
        <section id="articles">
            
        <?php foreach(fetchAllNews( $connectDB, $_GET["sort"] ) as $oneNew) : ?>
            <article id="article_<?=$oneNew["id_aktualnosci"];?>">
                <h4 id="title"><?=$oneNew["tytul_aktualnosci"];?></h4>
                <p id="header"><?=$oneNew["naglowek_aktualnosci"];?></p>
                <span id="data"><?=$oneNew["data_publikacji_aktualnosci"];?></span>
            </article>
            <hr>
        <?php endforeach; ?>
            
        </section>
        
        <h3>Galeria</h3>
        <section id="gallery">
            
        <?php foreach(fetchAllPhotos($connectDB) as $onePhoto) : ?>
            <a href="show_photo.php?idPhoto=<?=$onePhoto["id_zdjecia"];?>" target="_blank">
                <img id="img_<?=$onePhoto["id_zdjecia"];?>" src="<?=__URL__;?>/zdjecia/<?=$onePhoto["nazwa_pliku_zdjecia"];?>">
            </a>
        <?php endforeach; ?>
            
        </section>
        
        <footer>
            Copyright PWC 2016
        </footer>
    </body>
</html>
