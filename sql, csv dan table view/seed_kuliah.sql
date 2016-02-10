-- jadwal ilab

set @uuid_jadwal_kuliah1 = uuid();
set @uuid_jadwal_kuliah2 = uuid();
set @uuid_jadwal_kuliah3 = uuid();
set @uuid_jadwal_kuliah4 = uuid();
set @uuid_jadwal_kuliah5 = uuid();
set @uuid_jadwal_kuliah6 = uuid();

INSERT INTO `penjadwalan`.`jadwal_kuliah`
(`id_jadwal_kuliah`,`hari`)
VALUES
(@uuid_jadwal_kuliah1, 'senin'),
(@uuid_jadwal_kuliah2, 'selasa'),
(@uuid_jadwal_kuliah3, 'rabu'),
(@uuid_jadwal_kuliah4, 'kamis'),
(@uuid_jadwal_kuliah5, 'jumat'),
(@uuid_jadwal_kuliah6, 'sabtu');

-- sesi ilab

set @uuid_sesi_kuliah1 = uuid();
set @uuid_sesi_kuliah2 = uuid();
set @uuid_sesi_kuliah3 = uuid();
set @uuid_sesi_kuliah4 = uuid();
set @uuid_sesi_kuliah5 = uuid();
set @uuid_sesi_kuliah6 = uuid();
set @uuid_sesi_kuliah7 = uuid();
set @uuid_sesi_kuliah8 = uuid();
set @uuid_sesi_kuliah9 = uuid();
set @uuid_sesi_kuliah10 = uuid();
set @uuid_sesi_kuliah11 = uuid();
set @uuid_sesi_kuliah12 = uuid();
set @uuid_sesi_kuliah13 = uuid();
set @uuid_sesi_kuliah14 = uuid();
set @uuid_sesi_kuliah15 = uuid();
set @uuid_sesi_kuliah16 = uuid();
set @uuid_sesi_kuliah17 = uuid();
set @uuid_sesi_kuliah18 = uuid();
set @uuid_sesi_kuliah19 = uuid();
set @uuid_sesi_kuliah20 = uuid();
set @uuid_sesi_kuliah21 = uuid();
set @uuid_sesi_kuliah22 = uuid();
set @uuid_sesi_kuliah23 = uuid();
set @uuid_sesi_kuliah24 = uuid();
set @uuid_sesi_kuliah25 = uuid();
set @uuid_sesi_kuliah26 = uuid();
set @uuid_sesi_kuliah27 = uuid();
set @uuid_sesi_kuliah28 = uuid();
set @uuid_sesi_kuliah29 = uuid();
set @uuid_sesi_kuliah30 = uuid();

INSERT INTO `penjadwalan`.`sesi_kuliah`
(`id_sesi_kuliah`,`kelas`,`sesi`,`mata_kuliah`,`id_jadwal_kuliah`)
VALUES
(@uuid_sesi_kuliah1, '4IA01',0,null, @uuid_jadwal_kuliah1),
(@uuid_sesi_kuliah2, '4IA01',1,'java', @uuid_jadwal_kuliah1),
(@uuid_sesi_kuliah3 ,'4IA01',2,'paa', @uuid_jadwal_kuliah1),
(@uuid_sesi_kuliah4, '4IA01',3,null, @uuid_jadwal_kuliah1),
(@uuid_sesi_kuliah5, '4IA01',4,null, @uuid_jadwal_kuliah1),
(@uuid_sesi_kuliah6, '4IA01',0,'linux', @uuid_jadwal_kuliah2),
(@uuid_sesi_kuliah7, '4IA01',1,'tekom', @uuid_jadwal_kuliah2),
(@uuid_sesi_kuliah8, '4IA01',2,'pweb', @uuid_jadwal_kuliah2),
(@uuid_sesi_kuliah9, '4IA01',3,null, @uuid_jadwal_kuliah2),
(@uuid_sesi_kuliah10, '4IA01',4,'asp', @uuid_jadwal_kuliah2),
(@uuid_sesi_kuliah11, '4IA01',0,'scala', @uuid_jadwal_kuliah3),
(@uuid_sesi_kuliah12, '4IA01',1,'ruby', @uuid_jadwal_kuliah3),
(@uuid_sesi_kuliah13, '4IA01',2,'c++', @uuid_jadwal_kuliah3),
(@uuid_sesi_kuliah14, '4IA01',3,null, @uuid_jadwal_kuliah3),
(@uuid_sesi_kuliah15, '4IA01',4,null, @uuid_jadwal_kuliah3),
(@uuid_sesi_kuliah16, '4IA01',0,null, @uuid_jadwal_kuliah4),
(@uuid_sesi_kuliah17, '4IA01',1,null, @uuid_jadwal_kuliah4),
(@uuid_sesi_kuliah18, '4IA01',2,null, @uuid_jadwal_kuliah4),
(@uuid_sesi_kuliah19, '4IA01',3,'erp', @uuid_jadwal_kuliah4),
(@uuid_sesi_kuliah20, '4IA01',4,'hibernate', @uuid_jadwal_kuliah4),
(@uuid_sesi_kuliah21, '4IA01',0,'spring', @uuid_jadwal_kuliah5),
(@uuid_sesi_kuliah22, '4IA01',1,'ibatis', @uuid_jadwal_kuliah5),
(@uuid_sesi_kuliah23, '4IA01',2,'node js', @uuid_jadwal_kuliah5),
(@uuid_sesi_kuliah24, '4IA01',3,null, @uuid_jadwal_kuliah5),
(@uuid_sesi_kuliah25, '4IA01',4,'praktikum', @uuid_jadwal_kuliah5),
(@uuid_sesi_kuliah26, '4IA01',0,null, @uuid_jadwal_kuliah6),
(@uuid_sesi_kuliah27, '4IA01',1,null, @uuid_jadwal_kuliah6),
(@uuid_sesi_kuliah28, '4IA01',2,'ilab', @uuid_jadwal_kuliah6),
(@uuid_sesi_kuliah29, '4IA01',3, null,@uuid_jadwal_kuliah6),
(@uuid_sesi_kuliah30, '4IA01',4, null,@uuid_jadwal_kuliah6);
