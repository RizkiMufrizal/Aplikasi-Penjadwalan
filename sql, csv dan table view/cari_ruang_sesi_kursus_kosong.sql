CREATE VIEW `cari_ruang_sesi_kursus_kosong` AS
    SELECT 
        `jadwal_kursus`.`hari`,
        `ruang_kursus`.`ruang`,
        `sesi_kursus`.`modul`,
        `sesi_kursus`.`sesi`,
        `ruang_kursus`.`id_ruang_kursus`
    FROM
        `jadwal_kursus`
            INNER JOIN
        `ruang_kursus` ON `jadwal_kursus`.`id_jadwal_kursus` = `ruang_kursus`.`id_jadwal_kursus`
            INNER JOIN
        `sesi_kursus` ON `ruang_kursus`.`id_ruang_kursus` = `sesi_kursus`.`id_ruang_kursus`
    WHERE
        sesi_kursus.modul IS NULL
