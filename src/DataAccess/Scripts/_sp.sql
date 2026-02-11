CREATE DATABASE MinimalAPIDemo;

USE MinimalAPIDemo;

CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
)

IF NOT EXISTS (SELECT 1 FROM dbo.[User])
BEGIN 
    INSERT INTO dbo.[User] (FirstName, LastName)
    VALUES 
    ('Cat', 'Bot'),
    ('Test', 'LastNameTest'),
END

GO
CREATE PROCEDURE [dbo].[spUser_GetAll]
AS
BEGIN 
    SELECT Id, FirstName, LastName
    FROM dbo.[User];
END

GO
CREATE PROCEDURE [dbo].[spUser_Get] 
    @Id INT
AS
BEGIN
    SELECT Id, FirstName, LastName
    FROM dbo.[User]
    WHERE Id = @Id
END

GO
CREATE PROCEDURE [dbo].[spUser_Delete] 
    @Id INT
AS
BEGIN
    DELETE
    FROM dbo.[User]
    WHERE Id = @Id
END

GO
CREATE PROCEDURE [dbo].[spUser_Insert] 
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50)
AS
BEGIN
    INSERT INTO dbo.[User] (FirstName, LastName)
    VALUES (@FirstName, @LastName)
END

GO
CREATE PROCEDURE [dbo].[spUser_Update] 
    @Id INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50)
AS
BEGIN
    UPDATE dbo.[User]
    SET FirstName = @FirstName, LastName=@LastName
    WHERE Id = @Id
END

