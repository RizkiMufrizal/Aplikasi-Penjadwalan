<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 2:38:20 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class KursusController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Kursus');
        $this->load->model('Kelas');
    }

    public function getKursusKosong() {

        $c = $this->Kelas->jadwalKelasKosong('4IA01');
        $b = $this->Kursus->ruangKursusKosong();

        $stop = FALSE;

        foreach ($c as $ck) {
            foreach ($b as $bk) {
                if ($ck->sesi == $bk->sesi) {

                    $data = array(
                        'kelas' => '4IA01',
                        'modul' => 'latihan boss'
                    );

                    $id = $bk->id_sesi_kursus;

                    $this->Kursus->tambahJadwalKursus($data, $id);

                    $stop = true;
                    break;
                }
            }
            if ($stop) {
                break;
            }
        }
    }

    public function pageKursus() {
        $data['dataKursus'] = $this->Kursus->getAllJadwalKursus();
        $data['dataKursusKosong'] = $this->Kursus->getAllJadwalKursusKosong();
        $this->load->view('KursusView', $data);
    }

}
