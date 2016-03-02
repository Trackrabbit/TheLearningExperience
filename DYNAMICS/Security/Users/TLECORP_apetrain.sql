IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\apetrain')
CREATE LOGIN [TLECORP\apetrain] FROM WINDOWS
GO
CREATE USER [TLECORP\apetrain] FOR LOGIN [TLECORP\apetrain]
GO
