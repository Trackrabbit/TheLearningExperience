IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\kholbrook')
CREATE LOGIN [TLECORP\kholbrook] FROM WINDOWS
GO
CREATE USER [TLECORP\kholbrook] FOR LOGIN [TLECORP\kholbrook]
GO
