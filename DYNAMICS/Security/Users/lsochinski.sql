IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'lsochinski')
CREATE LOGIN [lsochinski] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [lsochinski] FOR LOGIN [lsochinski]
GO
