IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'vbakal')
CREATE LOGIN [vbakal] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [vbakal] FOR LOGIN [vbakal]
GO
