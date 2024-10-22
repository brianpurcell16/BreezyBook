DROP TABLE Bookings;
DROP TABLE Movies;
DROP TABLE Members;

CREATE TABLE Members
(MemID numeric(3),
Fname char(20),
Sname char(20),
Email char(30),
DOB Date,
Password char(20),
CONSTRAINT pk_MemID PRIMARY KEY (MemID));

CREATE TABLE Movies
(MovieID numeric(3),
MovieName char(50),
Length numeric(3),
Synopsis char(300),
AgeRating numeric(2),
CONSTRAINT pk_MovieID PRIMARY KEY (MovieID));

CREATE TABLE Bookings
(BookingID numeric(3),
MovieID numeric(3),
SeatNo char(3),
MemID numeric(3),
CONSTRAINT pk_BookingID PRIMARY KEY (BookingID),
CONSTRAINT fk_MovieID FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
CONSTRAINT fk_MemID FOREIGN KEY (MemID) REFERENCES Members(MemID));


