CREATE TABLE [dbo].[BS466009]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466009] ADD CONSTRAINT [PKBS466009] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [DOCTYPE], [BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BS466009] ON [dbo].[BS466009] ([VCHRNMBR], [DOCTYPE], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466009].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466009].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466009].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466009].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466009].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466009].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466009].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466009].[DOCTYPE]'
GO
GRANT SELECT ON  [dbo].[BS466009] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466009] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466009] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466009] TO [DYNGRP]
GO
