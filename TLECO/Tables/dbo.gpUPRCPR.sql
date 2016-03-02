CREATE TABLE [dbo].[gpUPRCPR]
(
[COMPTRNM] [int] NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOURSWKD] [int] NOT NULL,
[HRLYPYRT] [numeric] (19, 5) NOT NULL,
[PYADNMBR] [int] NOT NULL,
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTALPAY] [numeric] (19, 5) NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRKFLD1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gpUPRCPR] ADD CONSTRAINT [CK__gpUPRCPR__TRXEND__2CA4CE33] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[gpUPRCPR] ADD CONSTRAINT [PKgpUPRCPR] PRIMARY KEY CLUSTERED  ([AUCTRLCD], [COMPTRNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5gpUPRCPR] ON [dbo].[gpUPRCPR] ([EMPLOYID], [PYADNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3gpUPRCPR] ON [dbo].[gpUPRCPR] ([EMPLOYID], [TRXENDDT], [COMPTRNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2gpUPRCPR] ON [dbo].[gpUPRCPR] ([JOBNUMBR], [TRXENDDT], [COMPTRNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4gpUPRCPR] ON [dbo].[gpUPRCPR] ([TRXENDDT], [COMPTRNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpUPRCPR].[COMPTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gpUPRCPR].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpUPRCPR].[HOURSWKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gpUPRCPR].[HRLYPYRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpUPRCPR].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gpUPRCPR].[TOTALPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpUPRCPR].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpUPRCPR].[BRKFLD1]'
GO
GRANT SELECT ON  [dbo].[gpUPRCPR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gpUPRCPR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gpUPRCPR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gpUPRCPR] TO [DYNGRP]
GO
