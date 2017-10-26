insert into users(USER_ID,AFM,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,ROLE,ADDRESS) values ('1','112567892','John','Doe','john@mail.com','pass','ADMIN','Baker Street');
insert into users(USER_ID,AFM,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,ROLE,ADDRESS) values ('2','345678923','Jane','Doe','jane@mail.com','pass','SIMPLE','Beef Street');
insert into users(USER_ID,AFM,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,ROLE,ADDRESS) values ('3','987456123','Teo','Dora','teo@mail.com','pass345','SIMPLE','Teo Street');
insert into users(USER_ID,AFM,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,ROLE,ADDRESS) values ('4','123456789','George','Luke','George@mail.com','pass1234','SIMPLE','Bar Street');

insert into vehicles(PLATENO,CAR_MODEL,YEAR,COLOR,USER_ID) values ('IMA-8357','AUDI','2007','GREY','2');
insert into vehicles(PLATENO,CAR_MODEL,YEAR,COLOR,USER_ID) values ('IMA-8356','AUDI','2007','GREY','2');

insert into repairs(REPAIR_DATE,REPAIR_STATUS,REPAIR_TYPE,REPAIR_COST,VEHICLE_ID) values ('11-11-2017','completed','small','500','1');
insert into repairs(REPAIR_DATE,REPAIR_STATUS,REPAIR_TYPE,REPAIR_COST,VEHICLE_ID) values ('10-11-2017','in progress','big','1000','2');