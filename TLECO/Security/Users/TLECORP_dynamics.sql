IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\dynamics')
CREATE LOGIN [TLECORP\dynamics] FROM WINDOWS
GO
CREATE USER [TLECORP\dynamics] FOR LOGIN [TLECORP\dynamics]
GO
