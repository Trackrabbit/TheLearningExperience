IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'theexperts')
CREATE LOGIN [theexperts] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [theexperts] FOR LOGIN [theexperts]
GO
