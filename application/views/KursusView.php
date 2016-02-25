<!DOCTYPE html>
<!--

 Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 Since Feb 10, 2016
 Time 6:20:45 PM
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
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Data Jadwal Kursus</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Data Jadwal Kursus Kosong</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">

                        <p></p>

                        <a href="<?php echo base_url(); ?>index.php/KursusController/processPenjadwalan">
                            <button class="btn btn-primary">Proses Penjadwalan</button>
                        </a>

                        <p></p>

                        <table id="tabel1" class="table table-bordered table-hover table-responsive table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">Hari</th>
                                    <th class="text-center">Ruang</th>
                                    <th class="text-center">Sesi</th>
                                    <th class="text-center">Modul</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($dataKursus as $d) { ?>
                                    <tr>
                                        <td><?php echo $d->hari; ?></td>
                                        <td><?php echo $d->ruang; ?></td>
                                        <td><?php echo $d->sesi; ?></td>
                                        <td><?php echo $d->modul; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">

                        <p></p>

                        <form method="post" action="<?php echo base_url() ?>index.php/KursusController/uploadJadwalKursus" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputFile">Upload Data Jadwal Kursus</label>
                                <input type="file" name="userfile">
                                <p class="help-block">Silahkan browse file csv untuk data jadwal kursus</p>
                            </div>
                            <button type="submit" class="btn btn-success">Upload</button>
                        </form>

                        <p></p>

                        <a href="<?php echo base_url(); ?>index.php/KursusController/hapusAllDataKursus">
                            <button class="btn btn-danger">Hapus Semua Data</button>
                        </a>

                        <p></p>

                        <table id="tabel2" class="table table-bordered table-hover table-responsive table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">Hari</th>
                                    <th class="text-center">Ruang</th>
                                    <th class="text-center">Kelas</th>
                                    <th class="text-center">Sesi</th>
                                    <th class="text-center">Modul</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($dataKursusKosong as $dk) { ?>
                                    <tr>
                                        <td><?php echo $dk->hari; ?></td>
                                        <td><?php echo $dk->ruang; ?></td>
                                        <td><?php echo (empty($dk->kelas) ? 'kosong' : $dk->kelas) ?></td>
                                        <td><?php echo $dk->sesi; ?></td>
                                        <td><?php echo (empty($dk->modul) ? 'kosong' : $dk->modul) ?></td>
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
