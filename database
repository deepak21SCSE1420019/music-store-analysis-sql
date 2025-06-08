
-- Chinook MySQL Database Schema (Simplified Sample)
CREATE DATABASE IF NOT EXISTS Chinook;
USE Chinook;

CREATE TABLE Artist (
    ArtistId INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(120)
);

CREATE TABLE Album (
    AlbumId INT PRIMARY KEY AUTO_INCREMENT,
    Title NVARCHAR(160),
    ArtistId INT,
    FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);

CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY AUTO_INCREMENT,
    FirstName NVARCHAR(40),
    LastName NVARCHAR(20),
    Email NVARCHAR(60)
);

-- Insert sample data
INSERT INTO Artist (Name) VALUES ('AC/DC'), ('Aerosmith');

INSERT INTO Album (Title, ArtistId) VALUES ('For Those About To Rock', 1), ('Big Ones', 2);

INSERT INTO Customer (FirstName, LastName, Email) VALUES 
('Deepak', 'Sharma', 'deepak@example.com'),
('John', 'Doe', 'john@example.com');
