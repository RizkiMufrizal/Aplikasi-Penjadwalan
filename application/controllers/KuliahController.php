<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 6:50:26 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 *
 */
class KuliahController extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kuliah');
        $this->load->library('CSVReader');
    }

    public function pageKuliah()
    {
        $data['dataKuliah']       = $this->Kuliah->getAllJadwalKuliah();
        $data['dataKuliahKosong'] = $this->Kuliah->getAllJadwalKuliahKosong();
        $this->load->view('KuliahView', $data);
    }

    public function uploadJadwalKuliah()
    {
        $config['upload_path']   = './uploads/';
        $config['allowed_types'] = 'csv';
        $config['max_size']      = '1000';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();

            $this->load->view('csvindex', $data);
        } else {
            $file_data = $this->upload->data();
            $file_path = './uploads/' . $file_data['file_name'];

            $result = $this->csvreader->parse_file($file_path);
            foreach ($result as $row) {
                $id = $this->Kuliah->getKuliahByHari($row['hari'])[0]->id_jadwal_kuliah;

                $val = array(
                    'kelas'            => $row['kelas'],
                    'sesi'             => $row['sesi'],
                    'mata_kuliah'      => empty($row['mata_kuliah']) ? null : $row['mata_kuliah'],
                    'id_jadwal_kuliah' => $id,
                );

                $this->Kuliah->simpanJadwalKuliah($val);
            }

            redirect('kuliah');
        }
    }

}
