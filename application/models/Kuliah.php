<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 6:51:31 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 *
 */
class Kuliah extends CI_Model
{

    public function getAllJadwalKuliah()
    {
        return $this->db->get('query_jadwal_kuliah')->result();
    }

    public function getAllJadwalKuliahKosong()
    {
        return $this->db->get('cari_kelas_kosong')->result();
    }

    public function getKuliahByHari($hari)
    {
        $this->db->select('id_jadwal_kuliah');
        $this->db->where('hari', $hari);
        return $this->db->get('jadwal_kuliah')->result();
    }

    public function simpanJadwalKuliah($dataKuliah)
    {
        $val = array(
            'id_sesi_kuliah'   => $this->uuid->v4(),
            'kelas'            => $dataKuliah['kelas'],
            'sesi'             => $dataKuliah['sesi'],
            'mata_kuliah'      => $dataKuliah['mata_kuliah'],
            'id_jadwal_kuliah' => $dataKuliah['id_jadwal_kuliah'],
        );
        $this->db->insert('sesi_kuliah', $val);
    }

    public function getJadwalKosongByKelas($kelas)
    {
        $this->db->where('kelas', $kelas);
        return $this->db->get('cari_kelas_kosong')->result();
    }

}
