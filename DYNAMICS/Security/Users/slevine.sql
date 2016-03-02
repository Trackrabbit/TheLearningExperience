IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'slevine')
CREATE LOGIN [slevine] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [slevine] FOR LOGIN [slevine]
GO
