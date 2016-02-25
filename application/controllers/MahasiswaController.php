<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 24, 2016
 * Time 10:34:26 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class MahasiswaController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Mahasiswa');
        $this->load->library('CSVReader');
    }

    public function pageMahasiswa() {
        $data['dataMahasiswa'] = $this->Mahasiswa->getMahasiswa();
        $this->load->view('MahasiswaView', $data);
    }

    public function uploadMahasiswa() {
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
                $val = array(
                    'npm' => $row['npm'],
                    'nama' => $row['nama'],
                    'kelas' => $row['kelas'],
                    'modul' => $row['modul']
                );
                $this->Mahasiswa->simpanMahasiswa($val);
            }

            redirect('mahasiswa');
        }
    }

}
