--1 Crear Base de datos posts 
CREATE DATABASE post;

-- 2 Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripcion
CREATE TABLE post (id SERIAL, nombre_de_usuario VARCHAR(25), fecha_de_creacion DATE, contenido VARCHAR(200), descripcion VARCHAR(200) PRIMARY KEY (id));

--3 Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2020-12-02', 'lorem', 'lorem'),('Pamela', '2020-05-10', 'lorem', 'lorem'), ('Carlos', '2019-08-20','lorem', 'lorem');

--4 Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(30);

--Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo='Creacion Pamela 1' WHERE id=1;
UPDATE post SET titulo='Creacion Pamela 2' WHERE id=2;
UPDATE post SET titulo='Creacion Pamela 3' WHERE id=3;

--5 Insertar 2 post para el usuario "Pedro" 
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2018-04-02', 'lorem', 'lorem', 'Creacion Pedro 4'), ('Pedro', '2018-03-14', 'lorem', 'lorem', 'Creacion Pedro 5');

--6 Eliminar el post de Carlos 
DELETE FROM post WHERE nombre_de_usuario='Carlos';

--7 Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '2020-08-20', 'lorem', 'lorem', 'Creacion Carlos 6');

--8 Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios (id SERIAL, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(200), post_id SMALLINT, FOREIGN KEY (post_id) REFERENCES post(id));

--9 Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES ('2020-04-02 09:12:40','Creacion Pamela 1', 1), ('2020-04-02 10:40:50','Creacion Pamela 2', 2);
INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES ('2020-04-04 11:40:50','Creacion Carlos 6', 6), ('2020-06-06 22:50:50','Creacion Carlos 6', 6),('2020-06-06 22:30:12','Creacion Carlos 6', 6),('2020-06-08 17:50:50','Creacion Carlos 6', 6);

--10 Crear un nuevo post para "Margarita" 
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2020-05-20', 'lorem', 'lorem', 'Creacion Margarita 7');

--11 Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES ('2020-06-13 08:40:50','Creacion Margarita 7' , 7), ('2020-06-12 16:50:50','Creacion Margarita 7', 7),('2020-06-18 23:09:20','Creacion Margarita 7', 7),('2020-06-22 18:50:50','Creacion Margarita 7', 7), ('2020-06-20 15:30:50','Creacion Margarita 7', 7);
