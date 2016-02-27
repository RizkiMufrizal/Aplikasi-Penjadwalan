CREATE VIEW `query_modul_mahasiswa_dan_kursus` AS
    SELECT 
        `tb_modul`.`nama_modul`,
        `tb_modul_mahasiswa_dan_kursus`.`npm`,
        `tb_modul_mahasiswa_dan_kursus`.`nama`,
        `tb_modul_mahasiswa_dan_kursus`.`hari`,
        `tb_modul_mahasiswa_dan_kursus`.`sesi`,
        `tb_modul_mahasiswa_dan_kursus`.`ruang`
    FROM
        `tb_modul`
            INNER JOIN
        `tb_modul_mahasiswa_dan_kursus` ON `tb_modul`.`id_modul` = `tb_modul_mahasiswa_dan_kursus`.`id_modul`