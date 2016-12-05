<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function fetchAllNews( $connectDB, $sort = "DESC") { // wyswietlanie wszystkich aktualnosci
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

function addNew( $connectDB ) { // dodawnie nowej aktualnosci
    $sqlQuery = "INSERT INTO t_aktualnosci(tytul_aktualnosci, naglowek_aktualnosci, data_publikacji_aktualnosci) "
            . "VALUES ('Czym jest Lorem Ipsum?','Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. ',NOW())";
    
    mysqli_query($connectDB, $sqlQuery);
} // koniec funkcji