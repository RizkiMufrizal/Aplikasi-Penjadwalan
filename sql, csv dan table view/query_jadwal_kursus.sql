CREATE VIEW `query_jadwal_kursus` AS
    SELECT 
        `ruang_kursus`.`ruang`,
        `jadwal_kursus`.`hari`,
        `sesi_kursus`.`kelas`,
        `sesi_kursus`.`modul`,
        `sesi_kursus`.`sesi`
    FROM
        `ruang_kursus`
            INNER JOIN
        `jadwal_kursus` ON `ruang_kursus`.`id_jadwal_kursus` = `jadwal_kursus`.`id_jadwal_kursus`
            INNER JOIN
        `sesi_kursus` ON `ruang_kursus`.`id_ruang_kursus` = `sesi_kursus`.`id_ruang_kursus`
    WHERE
        `sesi_kursus`.`kelas` IS NOT NULL
            AND `sesi_kursus`.`modul` IS NOT NULL