IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\bi360tech')
CREATE LOGIN [TLECORP\bi360tech] FROM WINDOWS
GO
CREATE USER [TLECORP\bi360tech] FOR LOGIN [TLECORP\bi360tech]
GO