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
class KursusController extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kursus');
        $this->load->model('Kuliah');
        $this->load->model('Mahasiswa');
        $this->load->model('Modul');
        $this->load->library('CSVReader');
    }

    public function pageKursus()
    {
        $data['dataKursus']       = $this->Kursus->getAllJadwalKursus();
        $data['dataKursusKosong'] = $this->Kursus->getAllJadwalKursusKosong();
        $data['dataAllKursus']    = $this->Kursus->getAJadwalKursus();
        $this->load->view('KursusView', $data);
    }

    public function uploadJadwalKursus()
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
                $id_jadwal = $this->Kursus->getKursusByHari($row['hari'])[0]->id_jadwal_kursus;

                $id = $this->Kursus->getRuangKursusByRuangAndId($row['ruang'], $id_jadwal)[0]->id_ruang_kursus;

                $val = array(
                    'sesi'            => $row['sesi'],
                    'modul'           => empty($row['modul']) ? null : $row['modul'],
                    'id_ruang_kursus' => $id,
                );

                $this->Kursus->simpanJadwalKursus($val);
            }

            redirect('kursus');
        }
    }

    public function hapusAllDataKursus()
    {
        $this->Kursus->hapusAllDataKursus();
        redirect('kursus');
    }

    public function processPenjadwalan()
    {
        $m = $this->Mahasiswa->getMahasiswa();

        $dataModul = array();

        $dataAllKelompok = array();

        $dataKelompok = array();

        foreach ($m as $ms) {
            if (!in_array($ms->modul, $dataModul)) {
                array_push($dataModul, $ms->modul);
                $val = array(
                    'nama_modul' => $ms->modul,
                );
                $this->Modul->simpanModul($val);
            }
        }

        foreach ($dataModul as $dms) {
            foreach ($m as $ms) {
                if ($dms == $ms->modul) {
                    array_push($dataKelompok, array(
                        'nama'  => $ms->nama,
                        'kelas' => $ms->kelas,
                    ));

                    $modul = $this->Modul->getModul($dms);

                    $val = array(
                        'npm'      => $ms->npm,
                        'nama'     => $ms->nama,
                        'kelas'    => $ms->kelas,
                        'id_modul' => $modul[0]->id_modul,
                    );
                    $this->Modul->simpanModulMahasiswa($val);
                }
            }

            array_push($dataAllKelompok, array(
                'modul' => $dms,
                'isi'   => $dataKelompok,
            ));

            $dataKelompok = array();
        }

        redirect('kursus');
    }

    public function simpanModulMahasiswaKuliah()
    {
        $k = $this->Kuliah->getAllJadwalKuliahKosong();
        $m = $this->Modul->ambilDataModulMahasiswa();

        foreach ($k as $ks) {
            foreach ($m as $ms) {
                if ($ks->kelas == $ms->kelas) {
                    $val = array(
                        'nama'  => $ms->nama,
                        'kelas' => $ks->kelas,
                        'hari'  => $ks->hari,
                        'sesi'  => $ks->sesi,
                        'modul' => $ms->nama_modul,
                    );
                    $this->Modul->simpanModulMahasiswaKuliah($val);
                }
            }
        }

        redirect('kursus');
    }

    public function simpanBerdasarkanModul()
    {
        $k  = $this->Kuliah->getAllJadwalKuliahKosong();
        $m  = $this->Modul->ambilDataModulMahasiswa();
        $kr = $this->Kursus->getAllJadwalKursus();
        $i  = 0;

        $dataJadwalKursus = array();
        $dataFix          = array();

        foreach ($k as $ks) {
            foreach ($m as $ms) {
                foreach ($kr as $krs) {
                    if ($ms->nama_modul == $krs->modul) {
                        if ($ks->kelas == $ms->kelas) {
                            if ($ks->hari == $krs->hari and $ks->sesi == $krs->sesi) {

                                if (!in_array($ms->npm, $dataJadwalKursus)) {
                                    array_push($dataJadwalKursus, $ms->npm);

                                    $i++;

                                    echo $i . ' ';
                                    echo $ks->hari . ' ';
                                    echo $ks->sesi . ' ';
                                    echo $krs->ruang . ' ';
                                    echo $ms->npm . ' ';
                                    echo $krs->modul . ' ';
                                    echo "<br />";

                                    // if ($i == 10) {
                                    //     $val = array(
                                    //         'ruang'  => $krs->ruang,
                                    //         'hari'   => $ks->hari,
                                    //         'sesi'   => $ks->sesi,
                                    //         'modul'  => $ms->nama_modul,
                                    //         'jumlah' => $i,
                                    //     );
                                    //     $this->Kursus->simpanAllJadwalKursus($val);
                                    //     $i = 0;
                                    // }

                                }
                            }
                        }
                    }
                }
            }
        }

        //echo json_encode($dataJadwalKursus);

        //redirect('kursus');
    }

}
