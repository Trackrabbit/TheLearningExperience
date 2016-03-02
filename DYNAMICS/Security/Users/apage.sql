IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'apage')
CREATE LOGIN [apage] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [apage] FOR LOGIN [apage]
GO
