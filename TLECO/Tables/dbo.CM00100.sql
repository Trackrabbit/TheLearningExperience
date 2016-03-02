CREATE TABLE [dbo].[CM00100]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[BNKACTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTCHNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Next_Deposit_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DYDEPCLR] [smallint] NOT NULL,
[XCDMCHPW] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MXCHDLR] [numeric] (19, 5) NOT NULL,
[DUPCHNUM] [tinyint] NOT NULL,
[OVCHNUM1] [tinyint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CMUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMUSRDF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Reconciled_Date] [datetime] NOT NULL,
[Last_Reconciled_Balance] [numeric] (19, 5) NOT NULL,
[CURRBLNC] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[Recond] [tinyint] NOT NULL,
[Reconcile_In_Progress] [numeric] (19, 5) NOT NULL,
[Deposit_In_Progress] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHBKPSWD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYPD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRNCYRCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADPVADLR] [numeric] (19, 5) NOT NULL,
[ADPVAPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DYCHTCLR] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CHKBKTYP] [smallint] NOT NULL,
[DDACTNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDINDNAM] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANS] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PaymentRateTypeID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DepositRateTypeID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CashInTransAcctIdx] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00100] ADD CONSTRAINT [CK__CM00100__CREATDD__02084FDA] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CM00100] ADD CONSTRAINT [CK__CM00100__Last_Re__02FC7413] CHECK ((datepart(hour,[Last_Reconciled_Date])=(0) AND datepart(minute,[Last_Reconciled_Date])=(0) AND datepart(second,[Last_Reconciled_Date])=(0) AND datepart(millisecond,[Last_Reconciled_Date])=(0)))
GO
ALTER TABLE [dbo].[CM00100] ADD CONSTRAINT [CK__CM00100__MODIFDT__03F0984C] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM00100] ADD CONSTRAINT [PKCM00100] PRIMARY KEY NONCLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM00100] ON [dbo].[CM00100] ([CMUSRDF1], [CHEKBKID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM00100] ON [dbo].[CM00100] ([DSCRIPTN], [CHEKBKID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[BANKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[BNKACTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[NXTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[Next_Deposit_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[DYDEPCLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[XCDMCHPW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[MXCHDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[DUPCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[OVCHNUM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CMUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CMUSRDF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00100].[Last_Reconciled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[Last_Reconciled_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[CURRBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM00100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[Recond]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[Reconcile_In_Progress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[Deposit_In_Progress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CHBKPSWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CURNCYPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[CRNCYRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM00100].[ADPVADLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[ADPVAPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[DYCHTCLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[CHKBKTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[DDACTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[DDINDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[DDTRANS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[PaymentRateTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00100].[DepositRateTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00100].[CashInTransAcctIdx]'
GO
GRANT SELECT ON  [dbo].[CM00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[CM00100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[CM00100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[CM00100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[CM00100] TO [RAPIDGRP]
GO
