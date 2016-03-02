CREATE TABLE [dbo].[UPR10203]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[PAYTYPE] [smallint] NOT NULL,
[BSPAYRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSPAYTYP] [smallint] NOT NULL,
[BSDONRTE] [numeric] (19, 5) NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PAYUNIT] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYUNPER] [smallint] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[PAYPRPRD] [numeric] (19, 5) NOT NULL,
[PAYADVNC] [numeric] (19, 5) NOT NULL,
[TIMETYPE_I] [smallint] NOT NULL,
[TIMEAVAILABLE] [numeric] (19, 5) NOT NULL,
[ACRUVACN] [tinyint] NOT NULL,
[ACRUSTIM] [tinyint] NOT NULL,
[RPTASWGS] [tinyint] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[RECEIPTS] [numeric] (19, 5) NOT NULL,
[TipType] [smallint] NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNTSTOPY] [numeric] (19, 5) NOT NULL,
[ADJUNITS] [numeric] (19, 5) NOT NULL,
[TOTALPAY] [numeric] (19, 5) NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTRXSRC] [int] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[BLDCHWRG] [binary] (4) NOT NULL,
[BLDCHERR] [binary] (4) NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTPREM] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10203] ADD CONSTRAINT [CK__UPR10203__LSTDTE__18AC8967] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10203] ADD CONSTRAINT [CK__UPR10203__TRXBEG__19A0ADA0] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10203] ADD CONSTRAINT [CK__UPR10203__TRXEND__1A94D1D9] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10203] ADD CONSTRAINT [PKUPR10203] PRIMARY KEY NONCLUSTERED  ([USERID], [EMPLOYID], [PYRNTYPE], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10203] ON [dbo].[UPR10203] ([EMPLOYID], [PAYRCORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10203] ON [dbo].[UPR10203] ([SHFTCODE], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR10203] ON [dbo].[UPR10203] ([USERID], [PYRNTYPE], [EMPLOYID], [PAYRCORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10203] ON [dbo].[UPR10203] ([USERID], [PYRNTYPE], [EMPLOYID], [PRCSSQNC], [PAYRCORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PRCSSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PAYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[BSPAYRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[BSPAYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[BSDONRTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[PAYUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PAYUNPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[PAYPRPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[PAYADVNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[TIMETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[TIMEAVAILABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[ACRUVACN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[ACRUSTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[RPTASWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[RECEIPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[TipType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[UNTSTOPY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[ADJUNITS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[TOTALPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[PRTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10203].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10203].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10203].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[BLDCHWRG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10203].[BLDCHERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10203].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10203].[SHFTPREM]'
GO
GRANT SELECT ON  [dbo].[UPR10203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10203] TO [DYNGRP]
GO
