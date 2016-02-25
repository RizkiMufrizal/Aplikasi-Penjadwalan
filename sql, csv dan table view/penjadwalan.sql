CREATE TABLE IF NOT EXISTS jadwal_kursus (
    id_jadwal_kursus VARCHAR(36) NOT NULL,
    hari VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (id_jadwal_kursus)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS ruang_kursus (
    id_ruang_kursus VARCHAR(36) NOT NULL,
    ruang VARCHAR(5) NOT NULL,
    id_jadwal_kursus VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_ruang_kursus),
    FOREIGN KEY (id_jadwal_kursus)
        REFERENCES jadwal_kursus (id_jadwal_kursus)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sesi_kursus (
    id_sesi_kursus VARCHAR(36) NOT NULL,
    sesi INT(1) NOT NULL,
    modul VARCHAR(50),
    id_ruang_kursus VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_sesi_kursus),
    FOREIGN KEY (id_ruang_kursus)
        REFERENCES ruang_kursus (id_ruang_kursus)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS jadwal_kuliah (
    id_jadwal_kuliah VARCHAR(36) NOT NULL,
    hari VARCHAR(10),
    PRIMARY KEY (id_jadwal_kuliah)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sesi_kuliah (
    id_sesi_kuliah VARCHAR(36) NOT NULL,
    kelas VARCHAR(6) NOT NULL,
    sesi INT(1),
    mata_kuliah VARCHAR(50),
    id_jadwal_kuliah VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_sesi_kuliah),
    FOREIGN KEY (id_jadwal_kuliah)
        REFERENCES jadwal_kuliah (id_jadwal_kuliah)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS mahasiswa (
	id_mahasiswa varchar(150) not null,
    npm VARCHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    kelas VARCHAR(6) NOT NULL,
    modul VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_mahasiswa)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS tb_modul (
    id_modul VARCHAR(150) NOT NULL,
    nama_modul VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_modul)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS tb_modul_mahasiswa (
    id_modul_mahasiswa VARCHAR(150) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    kelas VARCHAR(6) NOT NULL,
    id_modul VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_modul_mahasiswa),
    FOREIGN KEY (id_modul)
        REFERENCES tb_modul (id_modul)
);

CREATE TABLE IF NOT EXISTS tb_modul_mahasiswa_kuliah (
    id_modul_mahasiswa_kuliah VARCHAR(150) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    kelas VARCHAR(6) NOT NULL,
    hari VARCHAR(10) NOT NULL,
    sesi INTEGER(1) NOT NULL,
    modul VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_modul_mahasiswa_kuliah)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS tb_all_jadwal_kursus (
    id_all_jadwal_kursus VARCHAR(150) NOT NULL,
    ruang VARCHAR(5) NOT NULL,
    hari VARCHAR(10) NOT NULL,
    sesi INTEGER(1) NOT NULL,
    modul VARCHAR(50) NOT NULL,
    jumlah INTEGER(2) NOT NULL,
    PRIMARY KEY (id_all_jadwal_kursus)
)  ENGINE=INNODB;