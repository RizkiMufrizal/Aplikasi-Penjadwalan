CREATE VIEW `sql_cari_kelas` AS
    SELECT 
        jadwal_kuliah.hari, sesi_kuliah.kelas, sesi_kuliah.sesi
    FROM
        jadwal_kuliah
            INNER JOIN
        sesi_kuliah ON jadwal_kuliah.id_jadwal_kuliah = sesi_kuliah.id_sesi_kuliah
    WHERE
        sesi_kuliah.kelas
            AND ses_kuliah.mata_kuliah IS NULL
