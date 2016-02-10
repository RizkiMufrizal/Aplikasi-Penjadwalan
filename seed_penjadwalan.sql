-- jadwal kuliah

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

-- sesi kuliah

INSERT INTO `penjadwalan`.`sesi_kuliah`
(`id_sesi_kuliah`,
`kelas`,
`sesi`,
`mata_kuliah`,
`id_jadwal_kuliah`)
VALUES
(uuid(), '4IA01',0,null, @uuid_jadwal_kuliah1),
(uuid(), '4IA01',1,'java', @uuid_jadwal_kuliah1),
(uuid(), '4IA01',2,'paa', @uuid_jadwal_kuliah1),
(uuid(), '4IA01',3,null, @uuid_jadwal_kuliah1),
(uuid(), '4IA01',4,null, @uuid_jadwal_kuliah1),
(uuid(), '4IA01',0,'linux', @uuid_jadwal_kuliah2),
(uuid(), '4IA01',1,'tekom', @uuid_jadwal_kuliah2),
(uuid(), '4IA01',2,'pweb', @uuid_jadwal_kuliah2),
(uuid(), '4IA01',3,null, @uuid_jadwal_kuliah2),
(uuid(), '4IA01',4,'asp', @uuid_jadwal_kuliah2),
(uuid(), '4IA01',0,'scala', @uuid_jadwal_kuliah3),
(uuid(), '4IA01',1,'ruby', @uuid_jadwal_kuliah3),
(uuid(), '4IA01',2,'c++', @uuid_jadwal_kuliah3),
(uuid(), '4IA011',3,null, @uuid_jadwal_kuliah3),
(uuid(), '4IA011',4,null, @uuid_jadwal_kuliah3),
(uuid(), '4IA01',0,null, @uuid_jadwal_kuliah4),
(uuid(), '4IA01',1,null, @uuid_jadwal_kuliah4),
(uuid(), '4IA01',2,null, @uuid_jadwal_kuliah4),
(uuid(), '4IA01',3,'erp', @uuid_jadwal_kuliah4),
(uuid(), '4IA01',4,'hibernate', @uuid_jadwal_kuliah4),
(uuid(), '4IA01',0,'spring', @uuid_jadwal_kuliah5),
(uuid(), '4IA01',1,'ibatis', @uuid_jadwal_kuliah5),
(uuid(), '4IA01',2,'node js', @uuid_jadwal_kuliah5),
(uuid(), '4IA01',3,null, @uuid_jadwal_kuliah5),
(uuid(), '4IA01',4,'praktikum', @uuid_jadwal_kuliah5),
(uuid(), '4IA01',0,null, @uuid_jadwal_kuliah6),
(uuid(), '4IA01',1,null, @uuid_jadwal_kuliah6),
(uuid(), '4IA01',2,'ilab', @uuid_jadwal_kuliah6),
(uuid(), '4IA01',3, null,@uuid_jadwal_kuliah6),
(uuid(), '4IA01',4, null,@uuid_jadwal_kuliah6);
