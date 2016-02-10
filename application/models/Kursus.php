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

    public function getKursusByHari($hari) {
        $this->db->select('id_jadwal_kursus');
        $this->db->where('hari', $hari);
        return $this->db->get('jadwal_kursus')->result();
    }

    public function getRuangKursusByRuangAndId($ruang, $id_jadwal_kursus) {
        $this->db->select('id_ruang_kursus');
        $this->db->where('ruang', $ruang);
        $this->db->where('id_jadwal_kursus', $id_jadwal_kursus);
        return $this->db->get('ruang_kursus')->result();
    }

    public function simpanJadwalKursus($dataKursus) {
        $val = array(
            'id_sesi_kursus' => $this->uuid->v4(),
            'kelas' => $dataKursus['kelas'],
            'sesi' => $dataKursus['sesi'],
            'modul' => $dataKursus['modul'],
            'id_ruang_kursus' => $dataKursus['id_ruang_kursus']
        );
        $this->db->insert('sesi_kursus', $val);
    }

    public function hapusAllDataKursus() {
        $this->db->truncate('sesi_kursus');
    }

}
