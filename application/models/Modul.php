<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 25, 2016
 * Time 4:37:06 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 *
 */
class Modul extends CI_Model
{

    public function simpanModul($dataModul)
    {
        $val = array(
            'id_modul'   => $this->uuid->v4(),
            'nama_modul' => $dataModul['nama_modul'],
        );
        $this->db->insert('tb_modul', $val);
    }

    public function getModul($nama_modul)
    {
        $this->db->select('id_modul');
        $this->db->where('nama_modul', $nama_modul);
        return $this->db->get('tb_modul')->result();
    }

    public function simpanModulMahasiswa($dataModul)
    {
        $val = array(
            'id_modul_mahasiswa' => $this->uuid->v4(),
            'nama'               => $dataModul['nama'],
            'kelas'              => $dataModul['kelas'],
            'id_modul'           => $dataModul['id_modul'],
        );
        $this->db->insert('tb_modul_mahasiswa', $val);
    }

    public function ambilDataModulMahasiswa()
    {
        return $this->db->get('ambil_data_modul_mahasiswa')->result();
    }

    public function simpanModulMahasiswaKuliah($dataModul)
    {
        $val = array(
            'id_modul_mahasiswa_kuliah' => $this->uuid->v4(),
            'nama'                      => $dataModul['nama'],
            'kelas'                     => $dataModul['kelas'],
            'hari'                      => $dataModul['hari'],
            'sesi'                      => $dataModul['sesi'],
            'modul'                     => $dataModul['modul'],
        );
        $this->db->insert('tb_modul_mahasiswa_kuliah', $val);
    }

}
