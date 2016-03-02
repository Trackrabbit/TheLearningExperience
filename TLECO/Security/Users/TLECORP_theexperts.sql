IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'TLECORP\theexperts')
CREATE LOGIN [TLECORP\theexperts] FROM WINDOWS
GO
CREATE USER [TLECORP\theexperts] FOR LOGIN [TLECORP\theexperts] WITH DEFAULT_SCHEMA=[TLECORP\theexperts]
GO
