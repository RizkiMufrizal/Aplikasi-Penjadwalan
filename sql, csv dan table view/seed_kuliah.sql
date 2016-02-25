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
