CREATE TABLE [dbo].[UPR30300]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADNMBR] [int] NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRLRTYP] [smallint] NOT NULL,
[PAYROLCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[UNTSTOPY] [numeric] (19, 5) NOT NULL,
[PAYRATE] [numeric] (19, 5) NOT NULL,
[UPRTRXAM] [numeric] (19, 5) NOT NULL,
[TIMETYPE_I] [smallint] NOT NULL,
[TIMEAVAILABLE] [numeric] (19, 5) NOT NULL,
[TipType] [smallint] NOT NULL,
[RECEIPTS] [numeric] (19, 5) NOT NULL,
[PAYADVNC] [numeric] (19, 5) NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USWHPSTD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTPREM] [numeric] (19, 5) NOT NULL,
[TXBLWAGS] [numeric] (19, 5) NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SBJTFUTA] [tinyint] NOT NULL,
[BSDONRTE] [numeric] (19, 5) NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30300] ADD CONSTRAINT [CK__UPR30300__CHEKDA__67D447E2] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR30300] ADD CONSTRAINT [CK__UPR30300__LSTDTE__68C86C1B] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30300] ADD CONSTRAINT [CK__UPR30300__TRXBEG__69BC9054] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30300] ADD CONSTRAINT [CK__UPR30300__TRXEND__6AB0B48D] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30300] ADD CONSTRAINT [PKUPR30300] PRIMARY KEY NONCLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10UPR30300] ON [dbo].[UPR30300] ([AUCTRLCD], [PYADNMBR], [PYRLRTYP], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR30300] ON [dbo].[UPR30300] ([AUCTRLCD], [PYRLRTYP], [PAYROLCD], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [AUCTRLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [CHEKNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [PYADNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR30300] ON [dbo].[UPR30300] ([EMPLOYID], [YEAR1], [CHEKDATE], [PYRLRTYP], [PAYROLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR30300] ON [dbo].[UPR30300] ([PYRLRTYP], [DEPRTMNT], [EMPLOYID], [YEAR1], [CHEKDATE], [PAYROLCD], [AUCTRLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30300].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[PYRLRTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[PAYROLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30300].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30300].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[UNTSTOPY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[PAYRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[UPRTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[TIMETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[TIMEAVAILABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[TipType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[RECEIPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[PAYADVNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30300].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[SHFTPREM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[TXBLWAGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30300].[SBJTFUTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30300].[BSDONRTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30300].[EMPLCLAS]'
GO
GRANT SELECT ON  [dbo].[UPR30300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR30300] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR30300] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[UPR30300] TO [rpt_payroll]
GO
