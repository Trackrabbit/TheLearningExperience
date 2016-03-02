CREATE TABLE [dbo].[UPR10204]
(
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXSHANTY] [tinyint] NOT NULL,
[DEDNSQNC] [smallint] NOT NULL,
[VARDEDTN] [tinyint] NOT NULL,
[VARDBAMT] [numeric] (19, 5) NOT NULL,
[VARDBPCT] [int] NOT NULL,
[DEDNFREQ] [smallint] NOT NULL,
[TTLDEDTN] [numeric] (19, 5) NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTRXSRC] [int] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[BLDCHWRG] [binary] (4) NOT NULL,
[BLDCHERR] [binary] (4) NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[SEQCOUNT] [int] NOT NULL,
[SEQUENCESUM] [numeric] (19, 5) NOT NULL,
[CALCCHKWRN] [binary] (4) NOT NULL,
[ATTEMPTEDAMT] [numeric] (19, 5) NOT NULL,
[SPLITMTHD] [smallint] NOT NULL,
[MAXAMOUNT] [numeric] (19, 5) NOT NULL,
[BASEDONWAGES] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10204] ADD CONSTRAINT [CK__UPR10204__LSTDTE__1D713E84] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10204] ADD CONSTRAINT [CK__UPR10204__TRXBEG__1E6562BD] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10204] ADD CONSTRAINT [CK__UPR10204__TRXEND__1F5986F6] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10204] ADD CONSTRAINT [PKUPR10204] PRIMARY KEY NONCLUSTERED  ([USERID], [EMPLOYID], [PYRNTYPE], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10204] ON [dbo].[UPR10204] ([EMPLOYID], [DEDUCTON], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR10204] ON [dbo].[UPR10204] ([USERID], [PYRNTYPE], [EMPLOYID], [DEDUCTON], [PRCSSQNC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10204] ON [dbo].[UPR10204] ([USERID], [PYRNTYPE], [EMPLOYID], [TXSHANTY], [DEDNSQNC], [DEDUCTON], [PRCSSQNC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[TXSHANTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[DEDNSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[VARDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[VARDBAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[VARDBPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[DEDNFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[TTLDEDTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[PRTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10204].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10204].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10204].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10204].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[BLDCHWRG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[BLDCHERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[PRCSSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[SEQCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[SEQUENCESUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[CALCCHKWRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[ATTEMPTEDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10204].[SPLITMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[MAXAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10204].[BASEDONWAGES]'
GO
GRANT SELECT ON  [dbo].[UPR10204] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10204] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10204] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10204] TO [DYNGRP]
GO
