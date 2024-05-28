create Database concesionario;

create table automovil(
id_automovil int PRIMARY KEY NOT NULL,
marca varchar(20),
modelo varchar(50),
fk_generacion int,
fk_carroceria int,
fk_motor int,
fk_transmision int,
fk_suspension int,
fk_frenos int,
constraint fk_generacion_1 foreign key (fk_generacion) references generacion (id_generacion),
constraint fk_carroceria_1 foreign key (fk_carroceria) references carroceria (id_carroceria),
constraint fk_motor_1 foreign key (fk_motor) references motor (id_motor),
constraint fk_transmision_1 foreign key (fk_transmision) references transmision (id_transmision),
constraint fk_suspension_1 foreign key (fk_suspension) references suspension (id_suspension),
constraint fk_frenos_1 foreign key (fk_frenos) references frenos (id_frenos)
);


create table generacion (
id_generacion int PRIMARY KEY NOT NULL,
generacion varchar(30),
ano_puesta int(10),
ano_detener int(10)
);

create table carroceria (
id_carroceria int PRIMARY KEY NOT NULL,
tipo_carroceria varchar(40),
numero_plaza int,
longitud int,
anchura int,
altura int,
via_delantera int,
via_trasera int,
carga int,
maletero_min int,
maletero_max int
);

create table motor (
id_motor int PRIMARY KEY NOT NULL,
tipo_motor varchar(50),
cilindraje int,
potencia_motor int,
revoluciones_max int,
tipo_inyeccion varchar(50),
disposicion_cilindro varchar(50),
numero_cilindro int,
valvulas_cilindro int
);

create table transmision (
id_transmision int PRIMARY KEY NOT NULL,
caja_cambios varchar(50),
traccion varchar(50),
diametro_giro int,
numero_marcha int
);

create table suspension (
id_suspension int PRIMARY KEY NOT NULL,
suspencion_delantera text(50),
suspencion_trasera text(50)
);

create table frenos (
id_frenos int PRIMARY KEY NOT NULL,
frenos_delantero text(50),
frenos_traseros text(50)
);