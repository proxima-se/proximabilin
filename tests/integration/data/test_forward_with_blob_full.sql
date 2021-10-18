create database if not exists test_db;
use test_db;

drop table if exists test_forward_with_blob;
create table if not exists test_forward_with_blob(id int primary key auto_increment, f1 tinyblob, f2 blob, f3 mediumblob, f4 longblob, f5 float, column1 varchar(256));

insert into test_forward_with_blob values(1, x'F1F2F3F4', '1111', '111', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 1.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1]');
insert into test_forward_with_blob values(2, x'F1F2F3F4', '2222', '222', '22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', 2.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2]');
insert into test_forward_with_blob values(3, x'F1F2F3F4', '3333', '333', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', 3.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3]');
insert into test_forward_with_blob values(4, x'F1F2F3F4', '4444', '444', '44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444', 4.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,4]');

select count(*) from test_forward_with_blob;