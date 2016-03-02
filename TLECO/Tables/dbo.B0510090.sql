CREATE TABLE [dbo].[B0510090]
(
[MJW_Offering_Type] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJWOfferingTypeDescripti] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestOrFund] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510090] ADD CONSTRAINT [PKB0510090] PRIMARY KEY CLUSTERED  ([MJW_Offering_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510090] ON [dbo].[B0510090] ([MJWOfferingTypeDescripti], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510090].[MJW_Offering_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510090].[MJWOfferingTypeDescripti]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510090].[BSSI_InvestOrFund]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510090].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510090] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510090] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510090] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510090] TO [DYNGRP]
GO
