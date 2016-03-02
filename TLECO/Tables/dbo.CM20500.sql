CREATE TABLE [dbo].[CM20500]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RECONUM] [numeric] (19, 5) NOT NULL,
[Recond] [tinyint] NOT NULL,
[StmntDate] [datetime] NOT NULL,
[StmntBal] [numeric] (19, 5) NOT NULL,
[CUTOFFBAL] [numeric] (19, 5) NOT NULL,
[ClrdPay] [smallint] NOT NULL,
[ClrdDep] [smallint] NOT NULL,
[ClrePayAmt] [numeric] (19, 5) NOT NULL,
[ClrdDepAmt] [numeric] (19, 5) NOT NULL,
[Cleared_Difference] [numeric] (19, 5) NOT NULL,
[OUTPAYTOT] [numeric] (19, 5) NOT NULL,
[OUTDEPTOT] [numeric] (19, 5) NOT NULL,
[IINADJTOT] [numeric] (19, 5) NOT NULL,
[DECADJTOT] [numeric] (19, 5) NOT NULL,
[ASOFBAL] [numeric] (19, 5) NOT NULL,
[CUTOFDAT] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[RCRDSTTS] [smallint] NOT NULL,
[Reconcile_Messages] [binary] (4) NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20500] ADD CONSTRAINT [CK__CM20500__CUTOFDA__4B7734FF] CHECK ((datepart(hour,[CUTOFDAT])=(0) AND datepart(minute,[CUTOFDAT])=(0) AND datepart(second,[CUTOFDAT])=(0) AND datepart(millisecond,[CUTOFDAT])=(0)))
GO
ALTER TABLE [dbo].[CM20500] ADD CONSTRAINT [CK__CM20500__GLPOSTD__4C6B5938] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM20500] ADD CONSTRAINT [CK__CM20500__MODIFDT__4D5F7D71] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM20500] ADD CONSTRAINT [CK__CM20500__StmntDa__4E53A1AA] CHECK ((datepart(hour,[StmntDate])=(0) AND datepart(minute,[StmntDate])=(0) AND datepart(second,[StmntDate])=(0) AND datepart(millisecond,[StmntDate])=(0)))
GO
ALTER TABLE [dbo].[CM20500] ADD CONSTRAINT [PKCM20500] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [RECONUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20500] ON [dbo].[CM20500] ([CHEKBKID], [Recond], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM20500] ON [dbo].[CM20500] ([RECONUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20500].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[RECONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20500].[Recond]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20500].[StmntDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[StmntBal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[CUTOFFBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20500].[ClrdPay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20500].[ClrdDep]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[ClrePayAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[ClrdDepAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[Cleared_Difference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[OUTPAYTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[OUTDEPTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[IINADJTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[DECADJTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[ASOFBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20500].[CUTOFDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20500].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20500].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20500].[RCRDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20500].[Reconcile_Messages]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20500].[AUDITTRAIL]'
GO
GRANT SELECT ON  [dbo].[CM20500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20500] TO [DYNGRP]
GO
