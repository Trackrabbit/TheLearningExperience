CREATE TABLE [dbo].[UPR10205]
(
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXABLE] [tinyint] NOT NULL,
[VARBENFT] [tinyint] NOT NULL,
[VARDBAMT] [numeric] (19, 5) NOT NULL,
[VARDBPCT] [int] NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[TOTLBNFT] [numeric] (19, 5) NOT NULL,
[AMTBOTIP] [numeric] (19, 5) NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTRXSRC] [int] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[BLDCHWRG] [binary] (4) NOT NULL,
[BLDCHERR] [binary] (4) NOT NULL,
[BNFTMTHD] [smallint] NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10205] ADD CONSTRAINT [CK__UPR10205__LSTDTE__2235F3A1] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10205] ADD CONSTRAINT [CK__UPR10205__TRXBEG__232A17DA] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10205] ADD CONSTRAINT [CK__UPR10205__TRXEND__241E3C13] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10205] ADD CONSTRAINT [PKUPR10205] PRIMARY KEY NONCLUSTERED  ([USERID], [EMPLOYID], [PYRNTYPE], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10205] ON [dbo].[UPR10205] ([EMPLOYID], [BENEFIT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR10205] ON [dbo].[UPR10205] ([USERID], [PYRNTYPE], [EMPLOYID], [BENEFIT], [PRCSSQNC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10205] ON [dbo].[UPR10205] ([USERID], [PYRNTYPE], [EMPLOYID], [TAXABLE], [BENEFIT], [PRCSSQNC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[TAXABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10205].[VARDBAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[VARDBPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10205].[TOTLBNFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10205].[AMTBOTIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[PRTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10205].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10205].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10205].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10205].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[BLDCHWRG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[BLDCHERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10205].[PRCSSQNC]'
GO
GRANT SELECT ON  [dbo].[UPR10205] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10205] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10205] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10205] TO [DYNGRP]
GO
