CREATE TABLE [dbo].[UPR10308]
(
[MLCHKTYP] [smallint] NOT NULL,
[PYADNMBR] [int] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MLTRXNBR] [int] NOT NULL,
[MLTRXTYP] [smallint] NOT NULL,
[UPRTRXCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBEGDT] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[HRLYPYRT] [numeric] (19, 5) NOT NULL,
[MLTRXAMT] [numeric] (19, 5) NOT NULL,
[MLTRXHRS] [int] NOT NULL,
[TXBLWAGS] [numeric] (19, 5) NOT NULL,
[RECEIPTS] [numeric] (19, 5) NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTPREM] [numeric] (19, 5) NOT NULL,
[EFICAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10308] ADD CONSTRAINT [CK__UPR10308__LSTDTE__52D92AFC] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10308] ADD CONSTRAINT [CK__UPR10308__TRXBEG__53CD4F35] CHECK ((datepart(hour,[TRXBEGDT])=(0) AND datepart(minute,[TRXBEGDT])=(0) AND datepart(second,[TRXBEGDT])=(0) AND datepart(millisecond,[TRXBEGDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10308] ADD CONSTRAINT [CK__UPR10308__TRXEND__54C1736E] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10308] ADD CONSTRAINT [PKUPR10308] PRIMARY KEY NONCLUSTERED  ([MLCHKTYP], [PYADNMBR], [MLTRXNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10308] ON [dbo].[UPR10308] ([MLCHKTYP], [PYADNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10308] ON [dbo].[UPR10308] ([MLCHKTYP], [PYADNMBR], [MLTRXTYP], [UPRTRXCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[MLCHKTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[MLTRXNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[MLTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[UPRTRXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10308].[TRXBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10308].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[HRLYPYRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[MLTRXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[MLTRXHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[TXBLWAGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[RECEIPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10308].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10308].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10308].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[SHFTPREM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10308].[EFICAMT]'
GO
GRANT SELECT ON  [dbo].[UPR10308] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10308] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10308] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10308] TO [DYNGRP]
GO
