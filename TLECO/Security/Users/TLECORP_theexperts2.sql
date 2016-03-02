IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\theexperts2')
CREATE LOGIN [TLECORP\theexperts2] FROM WINDOWS
GO
CREATE USER [TLECORP\theexperts2] FOR LOGIN [TLECORP\theexperts2]
GO
