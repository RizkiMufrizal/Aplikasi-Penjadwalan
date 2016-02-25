CREATE VIEW `ambil_data_modul_mahasiswa` AS
    SELECT 
        `tb_modul_mahasiswa`.`nama`,
        `tb_modul_mahasiswa`.`kelas`,
        `tb_modul`.`nama_modul`
    FROM
        `tb_modul_mahasiswa`
            INNER JOIN
        `tb_modul` ON `tb_modul_mahasiswa`.`id_modul` = `tb_modul`.`id_modul`