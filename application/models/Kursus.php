<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 2:30:32 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class Kursus extends CI_Model {

    public function ruangKursusKosong() {
        $this->db->select('id_sesi_kursus');
        $this->db->select('sesi');
        return $this->db->get('cari_ruang_sesi_kursus_kosong')->result();
    }

    public function tambahJadwalKursus($dataKursus, $id) {
        $data = array(
            'kelas' => $dataKursus['kelas'],
            'modul' => $dataKursus['modul']
        );
        $this->db->where('id_sesi_kursus', $id);
        $this->db->update('sesi_kursus', $data);
    }

    public function getAllJadwalKursus() {
        return $this->db->get('query_jadwal_kursus')->result();
    }

    public function getAllJadwalKursusKosong() {
        return $this->db->get('cari_ruang_sesi_kursus_kosong')->result();
    }

}
