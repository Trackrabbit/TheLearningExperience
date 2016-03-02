IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'dcalzada')
CREATE LOGIN [dcalzada] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [dcalzada] FOR LOGIN [dcalzada]
GO
