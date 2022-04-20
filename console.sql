CREATE TABLE products
(
    id         INT PRIMARY KEY,
    brand      VARCHAR(30),
    phones_id  INT REFERENCES phones (id),
    laptops_id INT REFERENCES laptops (id)
);

INSERT INTO products(id, brand, phones_id, laptops_id)
VALUES (1, 'Apple', 1, 1),
       (2, 'Xiaomi', 4, 4),
       (3, 'Galaxy', 3, 3),
       (4, 'Lenevo', 5, 5),
       (5, 'Asus', 2, 2);

SELECT *
FROM products;



CREATE TABLE phones
(
    id    int primary key,
    name  varchar(30),
    price int not null,
    color varchar(30)
);

INSERT INTO phones(id, name, price, color)
VALUES (1, 'iPhone', 80000, 'space grey'),
       (2, 'Asus', 12000, 'black'),
       (3, 'Samasung', 15000, 'blue'),
       (4, 'Redmi', 14000, 'black'),
       (5, 'Lenovo', 8000, 'red and black');

SELECT *
FROM phones;

CREATE TABLE laptops
(
    id    INT PRIMARY KEY,
    name  VARCHAR(30),
    price INT not null,
    color VARCHAR(30)
);

INSERT INTO laptops(id, name, price, color)
VALUES (1, 'Mac', 180000, 'Rose'),
       (2, 'Asus', 80000, 'Black'),
       (3, 'Samsung', 30000, 'Blue'),
       (4, 'Xiaomi', 25000, 'Silver'),
       (5, 'Lenovo', 28000, 'Black and Blue');

SELECT *
FROM laptops;


CREATE TABLE transport
(
    id       INT PRIMARY KEY,
    model    VARCHAR(30),
    car_id   INT REFERENCES car (id),
    truck_id INT REFERENCES truck (id)
);

INSERT INTO transport(ID, MODEL, CAR_ID, TRUCK_ID)
VALUES (1, 'Man', null, 4),
       (2, 'Daf', 5, 5),
       (3, 'Volvo', 2, 1),
       (4, 'Freightliner', 4, null),
       (5, 'Mercedes-Benz', 1, 3),
       (6, 'Ford', 3, 5);


SELECT *
FROM transport;

CREATE TABLE car
(
    id    INT PRIMARY KEY,
    name  VARCHAR(30),
    price INT NOT NULL,
    color VARCHAR(30),
    count INT NOT NULL
);

INSERT INTO car(id, name, price, color, count)
VALUES (1, 'e220', 5000, 'black briliant', 2),
       (2, 'volvo lclass', 15000, 'balck briliant', 1),
       (3, 'mustang', 20000, 'yellow', 5),
       (4, 'montway', 25000, 'red', 1),
       (5, 'daf55', 12000, 'green', 1);

SELECT *
FROM car;

CREATe TABLE truck
(
    id    INT PRIMARY KEY,
    name  VARCHAR(30),
    price INT NOT NULL,
    color VARCHAR(30),
    count INT NOT NULL
);

INSERT INTO truck(id, name, price, color, count)
VALUES (1, 'Volvo518', 100000, 'red', 3),
       (2, 'Daf524', 150000, 'blue', 1),
       (3, 'Mercredes612', 200000, 'white', 1),
       (4, 'Freigtliner', 300000, 'black', 1),
       (5, 'Ford67', 12000, 'skyblue', 4);

SELECT *
FROM truck;

drop table transport;


CREATE TABLE kinostudies
(
    id        INT PRIMARY KEY,
    name      VARCHAR(30),
    movies_id INT REFERENCES movie (id)
);

INSERT INTO kinostudies(id, name, movies_id)
VALUES (1, 'Marvel', 1),
       (2, 'DreamWorks', 2),
       (3, 'Paramount', 3),
       (4, 'WaltDisney', 4),
       (5, 'Columbia', 5);

select *
from kinostudies;

CREATE TABLE movie
(
    id       INT PRIMARY KEY,
    name     VARCHAR(30),
    janr     VARCHAR(30),
    duration DOUBLE PRECISION
);

INSERT INTO movie(id, name, janr, duration)
VALUES (1, 'Marbius', 'War', 1.23),
       (2, 'Mulan', 'thriller', 1.45),
       (3, 'Avengers', 'ramantic', 0.34),
       (4, 'Shrek', 'indian', 1.56),
       (5, 'Sonic', 'fantastic', 2.45);

SELECT *
FROM movie;

UPDATE movie
SET name = 'Avaengers'
WHERE id = 1;

UPDATE movie
SET name = 'Shrek'
WHERE id = 2;

UPDATE movie
SET name = 'Sonic'
WHERE id = 3;

UPDATE movie
SET name = 'Mulan'
WHERE id = 4;

UPDATE movie
SET name = 'Morbius'
WHERE id = 5;


CREATE TABLE animal(
    id INT PRIMARY KEY ,
    name VARCHAR(30),
    birds_id INT REFERENCES birds(id)
);

INSERT INTO animal(ID, NAME, BIRDS_ID)
VALUES (1, 'old == 12 -> ', 1),
       (2, 'old == 12 -> ', 2);

SELECT * FROM animal;

CREATE TABLE birds(
    id INT PRIMARY KEY ,
    name VARCHAR(30),
    old VARCHAR(30),
    color varchar(30)
);

INSERT INTO birds(ID, NAME, OLD, COLOR)
VALUES (1, 'Koko', 12, 'blue'),
       (2, 'Beka', 12, 'black'),
       (3, 'Borya', 24, 'green');

SELECT * FROM birds;
