<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function connectDB($host, $user, $password, $database, $charset = "UTF8") {
    $connect = mysqli_connect($host, $user, $password, $database);
    
    if(!$connect) {
        die("Problem z połączeniem z bazą danych. ERNO: ". mysqli_connect_errno() ." ERROR: ". mysqli_connect_error());
    } else {
        mysqli_set_charset($connect, $charset);
        return $connect;
    }
}