<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 24, 2016
 * Time 10:31:59 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class Mahasiswa extends CI_Model {

    public function getMahasiswa() {
        return $this->db->get('mahasiswa')->result();
    }

    public function simpanMahasiswa($dataMahasiswa) {
        $val = array(
            'id_mahasiswa' => $this->uuid->v4(),
            'npm' => $dataMahasiswa['npm'],
            'nama' => $dataMahasiswa['nama'],
            'kelas' => $dataMahasiswa['kelas'],
            'modul' => $dataMahasiswa['modul']
        );
        $this->db->insert('mahasiswa', $val);
    }

}
