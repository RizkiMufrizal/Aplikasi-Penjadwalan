<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 2:52:24 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class Kelas extends CI_Model{
    
    public function jadwalKelasKosong($kelas){
        $this->db->where('kelas', $kelas);
        return $this->db->get('cari_kelas_kosong')->result();
    }
    
}
