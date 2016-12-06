<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function fetchAllNews( $connectDB, $sort = "DESC" ) { // wyswietlanie wszystkich aktualnosci
    $arrayNews = array();
    
    if ($sort == null or ($sort != 'ASC' and $sort != 'DESC')) {
        $sort = "DESC";
    } // koniec warunku
    
    $sqlQuery = "SELECT * FROM t_aktualnosci ORDER BY data_publikacji_aktualnosci ".$sort;
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
} // koniec funkcji

function getOneNew( $connectDB, $idNew ) {
    $sqlQuery = "SELECT * FROM t_aktualnosci WHERE id_aktualnosci = $idNew";
    $sqlResult = mysqli_query($connectDB, $sqlQuery);
    
    $numRows = mysqli_num_rows($sqlResult);
    
    if($numRows > 0) {
        return mysqli_fetch_assoc($sqlResult);
    } else {
        return 0; //brak aktualnosci
    }
} // koniec funkcji

function addNew( $connectDB, $dataFormNew ) { // dodawnie nowej aktualnosci
    $sqlQuery = "INSERT INTO t_aktualnosci(tytul_aktualnosci, naglowek_aktualnosci, data_publikacji_aktualnosci) "
            . "VALUES ('"
            .$dataFormNew['tytul_aktualnosci']."','"
            .$dataFormNew['naglowek_aktualnosci']."',"
            . "NOW())";
    mysqli_query($connectDB, $sqlQuery);
} // koniec funkcji

function saveNew( $connectDB, $dataFormNew ) {
    $dataNow = date("Y-m-d H:i:s");
    
    $sqlQuery = "UPDATE t_aktualnosci SET "
            . "tytul_aktualnosci = '".$dataFormNew["tytul_aktualnosci"]."', "
            . "naglowek_aktualnosci = '".$dataFormNew["naglowek_aktualnosci"]."', "
            . "data_publikacji_aktualnosci = '".$dataNow."' "
            . "WHERE id_aktualnosci = ".$dataFormNew["id_new"];
                
    mysqli_query( $connectDB, $sqlQuery );
}