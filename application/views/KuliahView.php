<!DOCTYPE html>
<!--

 Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 Since Feb 10, 2016
 Time 6:20:39 PM
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

            <div>
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Data Jadwal Kuliah</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Data Jadwal Kuliah Kosong</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <p></p>

                        <form method="post" action="<?php echo base_url() ?>index.php/KuliahController/uploadJadwalKuliah" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputFile">Upload Data Jadwal Kuliah</label>
                                <input type="file" name="userfile">
                                <p class="help-block">Silahkan browse file csv untuk data jadwal kuliah</p>
                            </div>
                            <button type="submit" class="btn btn-success">Upload</button>
                        </form>

                        <br>

                        <table id="tabel1" class="table table-bordered table-hover table-responsive table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">Hari</th>
                                    <th class="text-center">Kelas</th>
                                    <th class="text-center">Sesi</th>
                                    <th class="text-center">Mata Kuliah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($dataKuliah as $d) { ?>
                                    <tr>
                                        <td><?php echo $d->hari; ?></td>
                                        <td><?php echo $d->kelas; ?></td>
                                        <td><?php echo $d->sesi; ?></td>
                                        <td><?php echo $d->mata_kuliah; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <p></p>
                        <table id="tabel2" class="table table-bordered table-hover table-responsive table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">Hari</th>
                                    <th class="text-center">Kelas</th>
                                    <th class="text-center">Sesi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($dataKuliahKosong as $dk) { ?>
                                    <tr>
                                        <td><?php echo $dk->hari; ?></td>
                                        <td><?php echo $dk->kelas; ?></td>
                                        <td><?php echo $dk->sesi; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

        <?php $this->load->view('layout/js') ?>

    </body>
</html>