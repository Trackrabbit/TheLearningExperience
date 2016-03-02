CREATE TABLE [dbo].[B4640061]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Scroll_LineSequence] [numeric] (19, 5) NOT NULL,
[BSSI_BreakPointAmt] [numeric] (19, 5) NOT NULL,
[BSSI_PercentFactor] [numeric] (19, 5) NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640061] ADD CONSTRAINT [PKB4640061] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [BSSI_Scroll_LineSequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640061] ON [dbo].[B4640061] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [BSSI_BreakPointAmt]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640061].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640061].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640061].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640061].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640061].[BSSI_Scroll_LineSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640061].[BSSI_BreakPointAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640061].[BSSI_PercentFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640061].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640061] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640061] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640061] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640061] TO [DYNGRP]
GO
