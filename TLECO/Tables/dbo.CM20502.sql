CREATE TABLE [dbo].[CM20502]
(
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20502] ADD CONSTRAINT [CK__CM20502__cleared__69E548A2] CHECK ((datepart(hour,[clearedate])=(0) AND datepart(minute,[clearedate])=(0) AND datepart(second,[clearedate])=(0) AND datepart(millisecond,[clearedate])=(0)))
GO
ALTER TABLE [dbo].[CM20502] ADD CONSTRAINT [CK__CM20502__TRXDATE__68F12469] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20502] ADD CONSTRAINT [PKCM20502] PRIMARY KEY CLUSTERED  ([AUDITTRAIL], [RECONUM], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20502] ON [dbo].[CM20502] ([CMRECNUM], [RECONUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20502].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20502].[RECONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20502].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[CMLinkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20502].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20502].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20502].[clearedate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20502].[ClrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20502].[DEPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20502].[SRCDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20502].[CHEKBKID]'
GO
GRANT SELECT ON  [dbo].[CM20502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20502] TO [DYNGRP]
GO
