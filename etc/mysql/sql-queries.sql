delete from d1_lagna0;
ALTER TABLE d1_lagna0 AUTO_INCREMENT = 1;
delete from d1_lagna1;
ALTER TABLE d1_lagna1 AUTO_INCREMENT = 1;
delete from d1_lagna2;
ALTER TABLE d1_lagna2 AUTO_INCREMENT = 1;
delete from d1_lagna3;
ALTER TABLE d1_lagna3 AUTO_INCREMENT = 1;
delete from d1_bbindu;
ALTER TABLE d1_bbindu AUTO_INCREMENT = 1;
delete from d1_graha1;
ALTER TABLE d1_graha1 AUTO_INCREMENT = 1;
delete from d1_graha2;
ALTER TABLE d1_graha2 AUTO_INCREMENT = 1;
delete from d1_graha3;
ALTER TABLE d1_graha3 AUTO_INCREMENT = 1;
delete from d1_graha4;
ALTER TABLE d1_graha4 AUTO_INCREMENT = 1;
delete from d1_graha5;
ALTER TABLE d1_graha5 AUTO_INCREMENT = 1;
delete from d1_graha6;
ALTER TABLE d1_graha6 AUTO_INCREMENT = 1;
delete from d1_graha7;
ALTER TABLE d1_graha7 AUTO_INCREMENT = 1;
delete from d1_graha8;
ALTER TABLE d1_graha8 AUTO_INCREMENT = 1;
delete from d1_graha9;
ALTER TABLE d1_graha9 AUTO_INCREMENT = 1;
delete from d1_graha10;
ALTER TABLE d1_graha10 AUTO_INCREMENT = 1;
delete from d1_graha11;
ALTER TABLE d1_graha11 AUTO_INCREMENT = 1;
delete from d1_graha12;
ALTER TABLE d1_graha12 AUTO_INCREMENT = 1;
delete from d1_upagraha1;
ALTER TABLE d1_upagraha1 AUTO_INCREMENT = 1;
delete from d1_upagraha2;
ALTER TABLE d1_upagraha2 AUTO_INCREMENT = 1;
delete from d1_upagraha3;
ALTER TABLE d1_upagraha3 AUTO_INCREMENT = 1;
delete from d1_upagraha4;
ALTER TABLE d1_upagraha4 AUTO_INCREMENT = 1;
delete from d1_upagraha5;
ALTER TABLE d1_upagraha5 AUTO_INCREMENT = 1;
delete from kundali;
ALTER TABLE kundali AUTO_INCREMENT = 1;

select d1.* from kundali d1
inner join d1_graha1 as su on su.kundali_id = d1.id and su.rasi > 8
inner join d1_graha2 as ch on ch.kundali_id = d1.id and ch.rasi > 8
inner join d1_graha3 as gu on gu.kundali_id = d1.id and gu.rasi > 8
inner join d1_graha4 as ra on ra.kundali_id = d1.id and ra.rasi = 2
inner join d1_graha5 as bu on bu.kundali_id = d1.id and bu.rasi > 8
inner join d1_graha6 as sk on sk.kundali_id = d1.id and sk.rasi > 8
inner join d1_graha7 as ke on ke.kundali_id = d1.id and ke.rasi = 8
inner join d1_graha8 as sa on sa.kundali_id = d1.id and sa.rasi > 8
inner join d1_graha9 as ma on ma.kundali_id = d1.id and ma.rasi > 8
order by datetime desc

select d1.* 
from kundali d1
inner join d1_graha1 as su on su.kundali_id = d1.id and su.rasi = 4 and su.rasi_long <= 562682  
inner join d1_graha2 as ch on ch.kundali_id = d1.id and ch.rasi = 4 and ch.rasi_long <= 562797  
order by datetime desc