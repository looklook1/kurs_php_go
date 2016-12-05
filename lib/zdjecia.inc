<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function fetchAllPhotos($connectDB) {
    $arrayPhotos = array();
    
    $sqlQuery = "SELECT * FROM t_galeria;";
    $sqlResult = mysqli_query($connectDB, $sqlQuery);
    $numRows = mysqli_num_rows($sqlResult);
    
    if($numRows > 0) {
        while($oneRow = mysqli_fetch_assoc($sqlResult)) {
            $arrayPhotos[] = $oneRow;
        }
        return $arrayPhotos;
    } else {
        return 0; //brak aktualnosci
    }
} // koniec funkcji

function getOnePhoto( $connectDB, $id_photo ) {
    $sqlQuery = "SELECT tytul_zdjecia, nazwa_pliku_zdjecia "
            . "FROM t_galeria "
            . "WHERE id_zdjecia=".$id_photo; // zapytanie sql
    $sqlResult = mysqli_query( $connectDB, $sqlQuery ); // wyknanie zapytania
    
    $numRows = mysqli_num_rows( $sqlResult ); // zwrotka o ilosci rekordow
    
    if($numRows > 0) { // sprawdzamy czy wiecej niz 0
        //$oneRow = mysqli_fetch_row( $sqlResult ); // pobranie rekordu jednego zdjecia w postaci tablicy autonumerycznej
        //$oneRow = mysqli_fetch_assoc( $sqlResult ); // pobranie rekordu jednego zdjecia w postaci tablicy asocjacyjnej

        return mysqli_fetch_assoc( $sqlResult ); // tablica z jednym zdjeciem
    } else {
        return 0; //brak zdjęc
    } // koniec sprawdza
} // koniec funkcji