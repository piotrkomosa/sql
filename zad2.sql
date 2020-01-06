/*1*/
CREATE TABLE pracownik(
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(30),
nazwisko VARCHAR(30),
wyplata INT,
dataUrodzenia DATE,
stanowisko VARCHAR(30));
/*2*/
INSERT INTO pracownik(imie, nazwisko,wyplata,dataUrodzenia,stanowisko)
VALUES('Adam', 'Abacki',5000,'1991-09-12','Kierownik'),
('Ewa', 'Nowak',12000,'1972-05-16','Dyrektor'),
('Michal', 'Kowalski',4000,'1984-02-28','Fryzjer'),
('Marta', 'Słodka',8000,'1993-07-12','Ksiegowa'),
('Jan', 'Nowacki',6000,'1956-03-23','Mechanik'),
('Anna', 'Wicher',9000,'1975-04-12','Stomatolog');
/*3*/
SELECT * from pracownik order by  nazwisko;
/*4*/
SELECT * from pracownik where stanowisko='Kierownik';
/*5*/
SELECT * from pracownik where DATEDIFF(CURDATE(),dataUrodzenia)>10957;

/*7*/
SELECT imie,nazwisko, wyplata*1.1,dataUrodzenia,stanowisko from pracownik where stanowisko ='Mechanik';
/*8*/
drop table pracownik; 
/*9*/
CREATE TABLE stanowisko(
nazwa_stanowiska VARCHAR(20),
opis_stanowiska VARCHAR(50),
wyplata INT);
/*10*/
CREATE TABLE adres(
ulica_numer VARCHAR(30),
kod_pocztowy INT(10),
miejscowosc VARCHAR(50));
/*11*/
CREATE TABLE pracownik(
pesel INT,
imie VARCHAR(20),
nazwisko VARCHAR(25));

ALTER TABLE adres
ADD COLUMN  pesel INT;

ALTER TABLE stanowisko
ADD COLUMN pesel INT;
/*12*/
INSERT INTO adres(ulica_numer,kod_pocztowy,miejscowosc,pesel)
VALUES('Sienkiewicza 34/45', 12456 , 'Poznan',1234),
('Mickiewicza 55/11', '45678' , 'Wroclaw',2345),
('Slowackiego 12/3', 67812 , 'Lodz',3456),
('Prusa 124/11', 54711 , 'Warszawa',4567);

INSERT INTO stanowisko(nazwa_stanowiska, opis_stanowiska, wyplata,pesel)
VALUES('Pisarz','Pisze ksizaki',5600,4567),
('Malarz','Maluje domy',6700,2345),
('Murarz', 'Buduje domy',10000,1234),
('Programista','Programuje programy',15000,3456);

INSERT INTO pracownik(pesel, imie , nazwisko)
VALUES(1234,'Anna','Nowak'),
(2345,'Michal', 'Kowalski'),
(3456,'Jan','Kowalewski'),
(4567,'Marta','Okon');

/*14*/
SELECT SUM(wyplata) from stanowisko;








