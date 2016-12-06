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
        <h3>Nowa aktualność</h3>
        <form action="index.php?action=add_new" method="post">
            Tytuł aktualności<br>
            <input style="width: 450px;" type="text" name="tytul_aktualnosci" min="1" maxlength="255" required="required"><br>
            Nagłówek aktualności<br>
            <textarea  style="width: 450px;" name="naglowek_aktualnosci" cols="75" rows="5" required="required"></textarea><br>
            <button type="submit" value="Zapisz aktualność">Zapisz aktualność</button>
        </form>
    </body>
</html>
