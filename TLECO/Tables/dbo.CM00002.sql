CREATE TABLE [dbo].[CM00002]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[RECONUM] [numeric] (19, 5) NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxType] [smallint] NOT NULL,
[CMLinkID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[clearedate] [datetime] NOT NULL,
[ClrdAmt] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paidtorcvdfrom] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPTYPE] [smallint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRCDOCTYP] [smallint] NOT NULL,
[SRCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPDATED] [tinyint] NOT NULL,
[RECONFLG] [tinyint] NOT NULL,
[CHGFLAG] [tinyint] NOT NULL,
[MARKED] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00002] ADD CONSTRAINT [CK__CM00002__cleared__7F2BE32F] CHECK ((datepart(hour,[clearedate])=(0) AND datepart(minute,[clearedate])=(0) AND datepart(second,[clearedate])=(0) AND datepart(millisecond,[clearedate])=(0)))
GO
ALTER TABLE [dbo].[CM00002] ADD CONSTRAINT [CK__CM00002__TRXDATE__7E37BEF6] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CM00002] ADD CONSTRAINT [PKCM00002] PRIMARY KEY NONCLUSTERED  ([CHGFLAG], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CM00002] ON [dbo].[CM00002] ([CMTrxType], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM00002] ON [dbo].[CM00002] ([MARKED], [CMTrxType], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CM00002] ON [dbo].[CM00002] ([MARKED], [TRXDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6CM00002] ON [dbo].[CM00002] ([RECONFLG], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM00002] ON [dbo].[CM00002] ([TRXDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00002].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00002].[RECONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[CMLinkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00002].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00002].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00002].[clearedate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00002].[ClrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[DEPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[SRCDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[UPDATED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[RECONFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[CHGFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00002].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00002].[CHEKBKID]'
GO
GRANT SELECT ON  [dbo].[CM00002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00002] TO [DYNGRP]
GO
