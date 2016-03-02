IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'mwall')
CREATE LOGIN [mwall] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [mwall] FOR LOGIN [mwall]
GO
