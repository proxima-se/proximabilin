create database if not exists test_db;
use test_db;

drop table if exists test_forward_with_json;
create table if not exists test_forward_with_json(id int primary key auto_increment, f1 char(16), f2 json, f3 varchar(3), f4 varchar(1024), f5 float, column1 varchar(256));

insert into test_forward_with_json values(1, '1111111111111111', '[1,2,3,4]', '111', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 1.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1]');
insert into test_forward_with_json values(2, '2222222222222222', '[1,2,3,4]', '222', '22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', 2.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2]');
insert into test_forward_with_json values(3, '3333333333333333', '[1,2,3,4]', '333', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', 3.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3]');
insert into test_forward_with_json values(4, '4444444444444444', '[1,2,3,4]', '444', '44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444', 4.0, '[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,4]');

select count(*) from test_forward_with_json;