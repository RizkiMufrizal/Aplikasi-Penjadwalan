<!DOCTYPE html>
<!--

 Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 Since Feb 10, 2016
 Time 5:43:54 PM
 Encoding UTF-8
 Project Aplikasi-Penjadwalan
 Package Expression package is undefined on line 9, column 12 in Templates/Scripting/EmptyPHPWebPage.php.
  
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Aplikasi Penjadwalan</title>

        <?php $this->load->view('layout/css') ?>

    </head>
    <body>

        <?php $this->load->view('layout/header') ?>

        <div class="container">

            <div class="jumbotron text-center">
                <h1>Selamat Datang</h1>
                <p>Aplikasi penjadwalan berfungsi untuk mengatur jadwal kursus</p>
            </div>

        </div>

        <?php $this->load->view('layout/js') ?>

    </body>
</html>
