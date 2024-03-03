show databases;
use sport;
show tables;
desc football;
create table team(
TeamId int primary key not null,
TeamName varchar(455) unique not null,
NoEmployee int not null,
TeamState varchar(455) not null
);
desc team;
insert into team(TeamId,TeamName,NoEmployee,TeamState)
values(1,'Manchester United',3000,'Manchester'),
(2,'Manchester City',4500,'Manchester'),
(3,'Chelsea',2500,'London'),
(4,'Arsenal',5000,'London');
select * from team where TeamName like 'M%';
update team set TeamState='North London' where TeamId=4;
select TeamName,NoEmployee as Employee from team
group by TeamName order by NoEmployee Desc;