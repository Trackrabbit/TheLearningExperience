CREATE TABLE [dbo].[B2900800]
(
[BSSI_ChargeID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeIncInLease] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeAccountIndex] [int] NOT NULL,
[BSSI_ChargeExcludeIntCal] [tinyint] NOT NULL,
[BSSI_EnableProrateExtraC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900800] ADD CONSTRAINT [PKB2900800] PRIMARY KEY CLUSTERED  ([BSSI_ChargeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2900800] ON [dbo].[B2900800] ([BSSI_ChargeDescription], [BSSI_ChargeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900800] ON [dbo].[B2900800] ([BSSI_ChargeDescription], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900800].[BSSI_ChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900800].[BSSI_ChargeDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900800].[BSSI_ChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900800].[BSSI_ChargeIncInLease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900800].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900800].[BSSI_ChargeAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900800].[BSSI_ChargeExcludeIntCal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900800].[BSSI_EnableProrateExtraC]'
GO
GRANT SELECT ON  [dbo].[B2900800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900800] TO [DYNGRP]
GO
