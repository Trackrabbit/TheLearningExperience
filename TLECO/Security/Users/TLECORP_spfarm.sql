IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\spfarm')
CREATE LOGIN [TLECORP\spfarm] FROM WINDOWS
GO
CREATE USER [TLECORP\spfarm] FOR LOGIN [TLECORP\spfarm]
GO
