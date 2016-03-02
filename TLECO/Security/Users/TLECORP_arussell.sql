IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\arussell')
CREATE LOGIN [TLECORP\arussell] FROM WINDOWS
GO
CREATE USER [TLECORP\arussell] FOR LOGIN [TLECORP\arussell]
GO
