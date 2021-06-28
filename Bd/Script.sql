create table if not exists tax(
 id varchar(38) not null,
 description varchar(50) not null,
 value decimal(12,2) default 0,
 constraint pk_tax primary key(id)
);

create table if not exists except(
 id varchar(38) not null,
 classname varchar(80),
 menssage text,
 date_time datetime,
 constraint pk_except primary key(id)
);


create table if not exists tank(
 id varchar(38) not null,
 description varchar(50) not null,
 liter decimal(12,2) default 0,
 constraint pk_tank primary key(id)
);

create table if not exists fuel(
 id varchar(38) not null,
 id_tax varchar(38) not null,
 description varchar(50) not null,
 value decimal(12,2) default 0,
 constraint pk_fuel primary key(id),
 constraint fk_fuel_tax foreign key(id_tax) references tax(id)
);

create table if not exists bomb(
 id varchar(38) not null,
 id_fuel varchar(38) not null,
 description varchar(50) not null,
 constraint pk_bomb primary key(id),
 constraint fk_bomb_fuel foreign key(id_fuel) references fuel(id)
);

create table if not exists tank_bomb(
 id varchar(38) not null,
 id_tank varchar(38) not null,
 id_bomb varchar(38) not null,
 constraint pk_tank_bomb primary key(id),
 constraint fk_tank_bomb_tank foreign key(id_tank) references tank(id),
 constraint fk_tank_bomb_bomb foreign key(id_bomb) references bomb(id)
);

create table if not exists to_fuel(
 id varchar(38) not null,
 id_tank_bomb varchar(38) not null,
 date datetime,
 liters integer,
 liter_value decimal(12,2),
 tax decimal(12,2), 
 constraint pk_to_fuel primary key(id),
 constraint fk_to_fuel_tank_bomb foreign key(id_tank_bomb) references tank_bomb(id)
);
