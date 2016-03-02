IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'akosolapova')
CREATE LOGIN [akosolapova] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [akosolapova] FOR LOGIN [akosolapova]
GO
