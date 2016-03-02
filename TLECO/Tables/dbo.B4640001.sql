CREATE TABLE [dbo].[B4640001]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LocationCode] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640001] ADD CONSTRAINT [PKB4640001] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640001] ON [dbo].[B4640001] ([BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [LOCNCODE], [LNITMSEQ], [BSSI_LocationCode]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640001].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640001].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640001].[BSSI_LocationCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640001].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640001].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640001].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640001].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640001].[LOCNDSCR]'
GO
GRANT SELECT ON  [dbo].[B4640001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640001] TO [DYNGRP]
GO
