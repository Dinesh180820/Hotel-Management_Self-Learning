CREATE DATABASE UserDB;
USE UserDB;
CREATE TABLE Users( Id INT IDENTITY(1,1) PRIMARY KEY, FullName NVARCHAR(50), 
 Email NVARCHAR(50), Phone bigint,Username NVARCHAR(50) UNIQUE,NPassword NVARCHAR(50));
 SELECT * FROM Users;
 EXEC sp_rename 'Users.FName','FullName','COLUMN';
 ALTER TABLE Users ADD Country Nvarchar(50);
 UPDATE Users SET Country='India'WHERE Country IS NULL;
 CREATE UNIQUE INDEX IX_Users_Username ON Users(Username);