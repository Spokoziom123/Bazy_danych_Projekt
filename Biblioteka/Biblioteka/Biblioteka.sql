CREATE TABLE Ksiazki (
  ID INT PRIMARY KEY,
  Tytul VARCHAR(255),
  Autor VARCHAR(255),
  FOREIGN KEY (Kategoria) REFERENCES Kategorie(ID),
  Opis TEXT,
  Dostepnosc VARCHAR(50)
);

CREATE TABLE Czytelnicy (
  ID INT PRIMARY KEY,
  Imie VARCHAR(255),
  Nazwisko VARCHAR(255),
  Adres VARCHAR(255),
  NumerTelefonu VARCHAR(20),
  Email VARCHAR(255)
);

CREATE TABLE Wypozyczenia (
  ID INT PRIMARY KEY,
  KsiazkaID INT,
  CzytelnikID INT,
  DataWypozyczenia DATE,
  DataZwrotu DATE,
  FOREIGN KEY (KsiazkaID) REFERENCES Ksiazki(ID),
  FOREIGN KEY (CzytelnikID) REFERENCES Czytelnicy(ID)
);

CREATE TABLE Pracownicy (
  ID INT PRIMARY KEY,
  Imie VARCHAR(255),
  Nazwisko VARCHAR(255),
  Stanowisko VARCHAR(255),
  DataZatrudnienia DATE
);

CREATE TABLE Kategorie (
  ID INT PRIMARY KEY,
  Nazwa VARCHAR(255)
);

CREATE TABLE Opinie (
  ID INT PRIMARY KEY,
  KsiazkaID INT,
  CzytelnikID INT,
  Tresc TEXT,
  Ocena INT,
  FOREIGN KEY (KsiazkaID) REFERENCES Ksiazki(ID),
  FOREIGN KEY (CzytelnikID) REFERENCES Czytelnicy(ID)
);
