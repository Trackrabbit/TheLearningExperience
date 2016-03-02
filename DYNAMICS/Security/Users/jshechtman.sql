IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'jshechtman')
CREATE LOGIN [jshechtman] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [jshechtman] FOR LOGIN [jshechtman]
GO
