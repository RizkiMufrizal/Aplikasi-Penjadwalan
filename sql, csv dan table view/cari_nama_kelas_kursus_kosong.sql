CREATE VIEW `cari_nama_kelas_kursus_kosong` AS
    SELECT 
        `sesi_kuliah`.`kelas`,
        `sesi_kuliah`.`sesi`,
        `sesi_kuliah`.`mata_kuliah`,
        `jadwal_kuliah`.`hari`,
        `mahasiswa`.`npm`,
        `mahasiswa`.`nama`,
        `mahasiswa`.`modul`
    FROM
        `jadwal_kuliah`
            INNER JOIN
        `sesi_kuliah` ON `jadwal_kuliah`.`id_jadwal_kuliah` = `sesi_kuliah`.`id_jadwal_kuliah`
            INNER JOIN
        `mahasiswa` ON `mahasiswa`.`kelas` = `sesi_kuliah`.`kelas`
    WHERE
        `sesi_kuliah`.`mata_kuliah` IS NULL