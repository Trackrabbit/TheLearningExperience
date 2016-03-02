IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\bibey')
CREATE LOGIN [TLECORP\bibey] FROM WINDOWS
GO
CREATE USER [bibey] FOR LOGIN [TLECORP\bibey]
GO
