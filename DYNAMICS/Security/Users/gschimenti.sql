IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'gschimenti')
CREATE LOGIN [gschimenti] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [gschimenti] FOR LOGIN [gschimenti]
GO
