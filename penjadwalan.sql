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
    sesi INT(1),
    kelas VARCHAR(6) NOT NULL,
    modul VARCHAR(15) NOT NULL,
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