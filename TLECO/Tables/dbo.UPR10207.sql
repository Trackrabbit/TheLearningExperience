CREATE TABLE [dbo].[UPR10207]
(
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTXTIPS] [numeric] (19, 5) NOT NULL,
[TTLLCLTX] [numeric] (19, 5) NOT NULL,
[TXBLWAGS] [numeric] (19, 5) NOT NULL,
[TXBLTIPS] [numeric] (19, 5) NOT NULL,
[BLDCHERR] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10207] ADD CONSTRAINT [PKUPR10207] PRIMARY KEY NONCLUSTERED  ([USERID], [EMPLOYID], [PYRNTYPE], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10207] ON [dbo].[UPR10207] ([EMPLOYID], [LOCALTAX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR10207] ON [dbo].[UPR10207] ([USERID], [PYRNTYPE], [EMPLOYID], [LOCALTAX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10207].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10207].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10207].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10207].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10207].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10207].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10207].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10207].[LOTXTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10207].[TTLLCLTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10207].[TXBLWAGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10207].[TXBLTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10207].[BLDCHERR]'
GO
GRANT SELECT ON  [dbo].[UPR10207] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10207] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10207] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10207] TO [DYNGRP]
GO
