<!DOCTYPE html>
<!--

 Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 Since Feb 24, 2016
 Time 10:41:21 PM
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
            <form method="post" action="<?php echo base_url() ?>index.php/MahasiswaController/uploadMahasiswa" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="exampleInputFile">Upload Data Mahasiswa</label>
                    <input type="file" name="userfile">
                    <p class="help-block">Silahkan browse file csv untuk data mahasiswa</p>
                </div>
                <button type="submit" class="btn btn-success">Upload</button>
            </form>

            <p></p>

            <table id="tabel2" class="table table-bordered table-hover table-responsive table-striped">
                <thead>
                    <tr>
                        <th class="text-center">NPM</th>
                        <th class="text-center">Nama</th>
                        <th class="text-center">Kelas</th>
                        <th class="text-center">Modul</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($dataMahasiswa as $dk) { ?>
                        <tr>
                            <td><?php echo $dk->npm; ?></td>
                            <td><?php echo $dk->nama; ?></td>
                            <td><?php echo $dk->kelas; ?></td>
                            <td><?php echo $dk->modul ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>

        <?php $this->load->view('layout/js') ?>

    </body>
</html>
