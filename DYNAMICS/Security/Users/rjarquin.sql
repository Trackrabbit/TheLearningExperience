IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'rjarquin')
CREATE LOGIN [rjarquin] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [rjarquin] FOR LOGIN [rjarquin]
GO
