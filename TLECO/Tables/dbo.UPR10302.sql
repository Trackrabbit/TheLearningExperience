CREATE TABLE [dbo].[UPR10302]
(
[COMPTRNM] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPTRTP] [smallint] NOT NULL,
[SALCHG] [smallint] NOT NULL,
[UPRTRXCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[TRXHRUNT] [int] NOT NULL,
[HRLYPYRT] [numeric] (19, 5) NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[VARDBAMT] [numeric] (19, 5) NOT NULL,
[VARDBPCT] [int] NOT NULL,
[RECEIPTS] [numeric] (19, 5) NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[INADDNTOSAL] [tinyint] NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTPREM] [numeric] (19, 5) NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNIONCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10302] ADD CONSTRAINT [CK__UPR10302__LSTDTE__46735417] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10302] ADD CONSTRAINT [CK__UPR10302__TRXBEG__47677850] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10302] ADD CONSTRAINT [CK__UPR10302__TRXEND__485B9C89] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10302] ADD CONSTRAINT [PKUPR10302] PRIMARY KEY NONCLUSTERED  ([COMPTRNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10302] ON [dbo].[UPR10302] ([BACHNUMB], [COMPTRNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10302] ON [dbo].[UPR10302] ([BACHNUMB], [EMPLOYID], [UPRTRXCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10302] ON [dbo].[UPR10302] ([EMPLOYID], [COMPTRTP], [UPRTRXCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[COMPTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[COMPTRTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[SALCHG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[UPRTRXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10302].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10302].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[TRXHRUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[HRLYPYRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[VARDBAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[VARDBPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[RECEIPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10302].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10302].[INADDNTOSAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10302].[SHFTPREM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10302].[UNIONCD]'
GO
GRANT SELECT ON  [dbo].[UPR10302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10302] TO [DYNGRP]
GO
