IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'delliott')
CREATE LOGIN [delliott] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [delliott] FOR LOGIN [delliott]
GO
