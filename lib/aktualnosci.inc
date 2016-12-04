<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function fetchAllNews($connectDB) {
    $arrayNews = array();
    
    $sqlQuery = "SELECT * FROM t_aktualnosci;";
    $sqlResult = mysqli_query($connectDB, $sqlQuery);
    $numRows = mysqli_num_rows($sqlResult);
    
    if($numRows > 0) {
        while($oneRow = mysqli_fetch_assoc($sqlResult)) {
            $arrayNews[] = $oneRow;
        }
        return $arrayNews;
    } else {
        return 0; //brak aktualnosci
    }
}