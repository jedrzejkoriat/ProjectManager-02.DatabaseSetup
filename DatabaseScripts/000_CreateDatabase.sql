IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ProjectManagerDB')
BEGIN
    CREATE DATABASE ProjectManagerDB;
END
GO