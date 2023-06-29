delete from d1_lagna_0;
ALTER TABLE d1_lagna_0 AUTO_INCREMENT = 1;
delete from d1_lagna_1;
ALTER TABLE d1_lagna_1 AUTO_INCREMENT = 1;
delete from d1_lagna_2;
ALTER TABLE d1_lagna_2 AUTO_INCREMENT = 1;
delete from d1_lagna_3;
ALTER TABLE d1_lagna_3 AUTO_INCREMENT = 1;
delete from d1_bhrigu_bindu;
ALTER TABLE d1_bhrigu_bindu AUTO_INCREMENT = 1;
delete from d1_graha_1;
ALTER TABLE d1_graha_1 AUTO_INCREMENT = 1;
delete from d1_graha_2;
ALTER TABLE d1_graha_2 AUTO_INCREMENT = 1;
delete from d1_graha_3;
ALTER TABLE d1_graha_3 AUTO_INCREMENT = 1;
delete from d1_graha_4;
ALTER TABLE d1_graha_4 AUTO_INCREMENT = 1;
delete from d1_graha_5;
ALTER TABLE d1_graha_5 AUTO_INCREMENT = 1;
delete from d1_graha_6;
ALTER TABLE d1_graha_6 AUTO_INCREMENT = 1;
delete from d1_graha_7;
ALTER TABLE d1_graha_7 AUTO_INCREMENT = 1;
delete from d1_graha_8;
ALTER TABLE d1_graha_8 AUTO_INCREMENT = 1;
delete from d1_graha_9;
ALTER TABLE d1_graha_9 AUTO_INCREMENT = 1;
delete from d1_graha_10;
ALTER TABLE d1_graha_10 AUTO_INCREMENT = 1;
delete from d1_graha_11;
ALTER TABLE d1_graha_11 AUTO_INCREMENT = 1;
delete from d1_graha_12;
ALTER TABLE d1_graha_12 AUTO_INCREMENT = 1;
delete from d1_upagraha_1;
ALTER TABLE d1_upagraha_1 AUTO_INCREMENT = 1;
delete from d1_upagraha_2;
ALTER TABLE d1_upagraha_2 AUTO_INCREMENT = 1;
delete from d1_upagraha_3;
ALTER TABLE d1_upagraha_3 AUTO_INCREMENT = 1;
delete from d1_upagraha_4;
ALTER TABLE d1_upagraha_4 AUTO_INCREMENT = 1;
delete from d1_upagraha_5;
ALTER TABLE d1_upagraha_5 AUTO_INCREMENT = 1;
delete from kundali;
ALTER TABLE kundali AUTO_INCREMENT = 1;

select d1.* from kundali d1
inner join d1_graha_1 as su on su.kundali_id = d1.id and su.rasi > 8
inner join d1_graha_2 as ch on ch.kundali_id = d1.id and ch.rasi > 8
inner join d1_graha_3 as gu on gu.kundali_id = d1.id and gu.rasi > 8
inner join d1_graha_4 as ra on ra.kundali_id = d1.id and ra.rasi = 2
inner join d1_graha_5 as bu on bu.kundali_id = d1.id and bu.rasi > 8
inner join d1_graha_6 as sk on sk.kundali_id = d1.id and sk.rasi > 8
inner join d1_graha_7 as ke on ke.kundali_id = d1.id and ke.rasi = 8
inner join d1_graha_8 as sa on sa.kundali_id = d1.id and sa.rasi > 8
inner join d1_graha_9 as ma on ma.kundali_id = d1.id and ma.rasi > 8
order by datetime desc

select d1.* 
from kundali d1
inner join d1_graha_1 as su on su.kundali_id = d1.id and su.rasi = 4 and su.rasi_long <= 562682
inner join d1_graha_2 as ch on ch.kundali_id = d1.id and ch.rasi = 4 and ch.rasi_long <= 562797
order by datetime desc