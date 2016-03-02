CREATE TABLE [dbo].[BS466001]
(
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Allocation_Percent] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS466001] ADD CONSTRAINT [PKBS466001] PRIMARY KEY NONCLUSTERED  ([BSSI_Template_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1BS466001] ON [dbo].[BS466001] ([BSSI_Template_ID], [BSSI_Tenant_Lease_Number], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466001].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466001].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS466001].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466001].[BSSI_Allocation_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS466001].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS466001].[LOCNCODE]'
GO
GRANT SELECT ON  [dbo].[BS466001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS466001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS466001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS466001] TO [DYNGRP]
GO
