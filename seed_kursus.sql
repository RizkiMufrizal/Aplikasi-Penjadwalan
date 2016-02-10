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
set @uuid_jadwal_ruang_kursus13 = uuid();
set @uuid_jadwal_ruang_kursus14 = uuid();
set @uuid_jadwal_ruang_kursus15 = uuid();
set @uuid_jadwal_ruang_kursus16 = uuid();
set @uuid_jadwal_ruang_kursus17 = uuid();
set @uuid_jadwal_ruang_kursus18 = uuid();
set @uuid_jadwal_ruang_kursus19 = uuid();
set @uuid_jadwal_ruang_kursus20 = uuid();
set @uuid_jadwal_ruang_kursus21 = uuid();
set @uuid_jadwal_ruang_kursus22 = uuid();
set @uuid_jadwal_ruang_kursus23 = uuid();
set @uuid_jadwal_ruang_kursus24 = uuid();
set @uuid_jadwal_ruang_kursus25 = uuid();
set @uuid_jadwal_ruang_kursus26 = uuid();
set @uuid_jadwal_ruang_kursus27 = uuid();
set @uuid_jadwal_ruang_kursus28 = uuid();
set @uuid_jadwal_ruang_kursus29 = uuid();
set @uuid_jadwal_ruang_kursus30 = uuid();

INSERT INTO `penjadwalan`.`ruang_kursus`
(`id_ruang_kursus`, `ruang`,`id_jadwal_kursus`)
VALUES
(@uuid_jadwal_ruang_kursus1,'E1',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus2,'E2',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus3,'E3',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus4,'E4',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus5,'E5',@uuid_jadwal_kursus1),
(@uuid_jadwal_ruang_kursus6,'E1',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus7,'E2',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus8,'E3',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus9,'E4',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus10,'E5',@uuid_jadwal_kursus2),
(@uuid_jadwal_ruang_kursus11,'E1',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus12,'E2',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus13,'E3',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus14,'E4',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus15,'E5',@uuid_jadwal_kursus3),
(@uuid_jadwal_ruang_kursus16,'E1',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus17,'E2',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus18,'E3',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus19,'E4',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus20,'E5',@uuid_jadwal_kursus4),
(@uuid_jadwal_ruang_kursus21,'E1',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus22,'E2',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus23,'E3',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus24,'E4',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus25,'E5',@uuid_jadwal_kursus5),
(@uuid_jadwal_ruang_kursus26,'E1',@uuid_jadwal_kursus6),
(@uuid_jadwal_ruang_kursus27,'E2',@uuid_jadwal_kursus6),
(@uuid_jadwal_ruang_kursus28,'E3',@uuid_jadwal_kursus6),
(@uuid_jadwal_ruang_kursus29,'E4',@uuid_jadwal_kursus6),
(@uuid_jadwal_ruang_kursus30,'E5',@uuid_jadwal_kursus6);

-- jadwal sesi kursus

INSERT INTO `penjadwalan`.`sesi_kursus`
(`id_sesi_kursus`,`sesi`,`kelas`,`modul`,`id_ruang_kursus`)
VALUES
(uuid(),0,'4IA01','java',@uuid_jadwal_ruang_kursus1),
(uuid(),1,'4IA02','c++',@uuid_jadwal_ruang_kursus1),
(uuid(),2,null,null,@uuid_jadwal_ruang_kursus1),
(uuid(),3,null,null,@uuid_jadwal_ruang_kursus1),
(uuid(),4,'4IA01','asp',@uuid_jadwal_ruang_kursus1),
(uuid(),0,null, null,@uuid_jadwal_ruang_kursus2),
(uuid(),1,'4IA02','jsp',@uuid_jadwal_ruang_kursus2),
(uuid(),2,'4IA01','myob',@uuid_jadwal_ruang_kursus2),
(uuid(),3,'4IA03','pweb',@uuid_jadwal_ruang_kursus2),
(uuid(),4,null, null,@uuid_jadwal_ruang_kursus2),
(uuid(),0,'4IA04','java',@uuid_jadwal_ruang_kursus3),
(uuid(),1,'4IA05','c++',@uuid_jadwal_ruang_kursus3),
(uuid(),2,'4IA04','jarkom',@uuid_jadwal_ruang_kursus3),
(uuid(),3,'4IA02','jarkomlan',@uuid_jadwal_ruang_kursus3),
(uuid(),4,null,null,@uuid_jadwal_ruang_kursus3),
(uuid(),0,null,null,@uuid_jadwal_ruang_kursus4),
(uuid(),1,null,null,@uuid_jadwal_ruang_kursus4),
(uuid(),2,'4IA011','java',@uuid_jadwal_ruang_kursus4),
(uuid(),3,'4IA016','c++',@uuid_jadwal_ruang_kursus4),
(uuid(),4,'4IA013','java',@uuid_jadwal_ruang_kursus4),
(uuid(),0,null,null,@uuid_jadwal_ruang_kursus5),
(uuid(),1,null,null,@uuid_jadwal_ruang_kursus5),
(uuid(),2,'4IA03','java',@uuid_jadwal_ruang_kursus5),
(uuid(),3,'4IA06','c++',@uuid_jadwal_ruang_kursus5),
(uuid(),4,'4IA010','java',@uuid_jadwal_ruang_kursus5);