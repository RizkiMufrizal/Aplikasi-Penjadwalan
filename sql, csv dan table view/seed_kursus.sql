-- jadwal kursus

set @uuid_jadwal_kursus1 = uuid();
set @uuid_jadwal_kursus2 = uuid();
set @uuid_jadwal_kursus3 = uuid();
set @uuid_jadwal_kursus4 = uuid();
set @uuid_jadwal_kursus5 = uuid();
set @uuid_jadwal_kursus6 = uuid();

INSERT INTO `penjadwalan`.`jadwal_kursus`
(`id_jadwal_kursus`,`hari`)
VALUES
(@uuid_jadwal_kursus1, 'senin'),
(@uuid_jadwal_kursus2, 'selasa'),
(@uuid_jadwal_kursus3, 'rabu'),
(@uuid_jadwal_kursus4, 'kamis'),
(@uuid_jadwal_kursus5, 'jumat'),
(@uuid_jadwal_kursus6, 'sabtu');

-- jadwal ruang kursus

set @uuid_jadwal_ruang_kursus1 = uuid();
set @uuid_jadwal_ruang_kursus2 = uuid();
set @uuid_jadwal_ruang_kursus3 = uuid();
set @uuid_jadwal_ruang_kursus4 = uuid();
set @uuid_jadwal_ruang_kursus5 = uuid();
set @uuid_jadwal_ruang_kursus6 = uuid();
set @uuid_jadwal_ruang_kursus7 = uuid();
set @uuid_jadwal_ruang_kursus8 = uuid();
set @uuid_jadwal_ruang_kursus9 = uuid();
set @uuid_jadwal_ruang_kursus10 = uuid();
set @uuid_jadwal_ruang_kursus11 = uuid();
set @uuid_jadwal_ruang_kursus12 = uuid();

INSERT INTO `penjadwalan`.`ruang_kursus`
(`id_ruang_kursus`, `ruang`,`id_jadwal_kursus`)
VALUES
(@uuid_jadwal_ruang_kursus1,'E1',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus2,'E2',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus3,'E1',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus4,'E2',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus5,'E1',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus6,'E2',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus7,'E1',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus8,'E2',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus9,'E1',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus10,'E2',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus11,'E1',@uuid_jadwal_kursus6),
(@uuid_jadwal_ruang_kursus12,'E2',@uuid_jadwal_kursus6);