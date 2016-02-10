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
        $this->load->model('Kuliah');
        $this->load->library('CSVReader');
    }

    public function simpanJadwalKursus() {

        $kelas = $this->input->post('kelas');
        $modul = $this->input->post('modul');

        $c = $this->Kuliah->getJadwalKosongByKelas($kelas);
        $b = $this->Kursus->ruangKursusKosong();

        $stop = FALSE;

        foreach ($c as $ck) {
            foreach ($b as $bk) {
                if ($ck->sesi == $bk->sesi) {

                    $data = array(
                        'kelas' => $kelas,
                        'modul' => $modul
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
        redirect('kursus');
    }

    public function pageKursus() {
        $data['dataKursus'] = $this->Kursus->getAllJadwalKursus();
        $data['dataKursusKosong'] = $this->Kursus->getAllJadwalKursusKosong();
        $this->load->view('KursusView', $data);
    }

    public function uploadJadwalKursus() {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'csv';
        $config['max_size'] = '1000';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();

            $this->load->view('csvindex', $data);
        } else {
            $file_data = $this->upload->data();
            $file_path = './uploads/' . $file_data['file_name'];

            $result = $this->csvreader->parse_file($file_path);
            foreach ($result as $row) {
                $id = $this->Kursus->getKursusByRuang($row['ruang'])[0]->id_ruang_kursus;

                $val = array(
                    'sesi' => $row['sesi'],
                    'modul' => empty($row['modul']) ? NULL : $row['modul'],
                    'kelas' => empty($row['kelas']) ? NULL : $row['kelas'],
                    'id_ruang_kursus' => $id
                );

                $this->Kursus->simpanJadwalKursus($val);
            }

            redirect('kursus');
        }
    }

}
