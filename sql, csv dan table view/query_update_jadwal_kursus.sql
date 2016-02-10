SELECT 
    k.id_sesi_kursus AS id_sesi_kursus,
    k.id_ruang_kursus AS id_ruang_kursus
FROM
    cari_ruang_sesi_kursus_kosong AS k
ORDER BY k.id_sesi_kursus ASC
LIMIT 1;