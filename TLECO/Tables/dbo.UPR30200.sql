CREATE TABLE [dbo].[UPR30200]
(
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[FTXWHLTY] [numeric] (19, 5) NOT NULL,
[FICASSTL] [numeric] (19, 5) NOT NULL,
[FICAMTWL] [numeric] (19, 5) NOT NULL,
[Uncollected_FICASS_TaxP] [numeric] (19, 5) NOT NULL,
[Uncollected_FICAMed_TaxP] [numeric] (19, 5) NOT NULL,
[ADEICPMT] [numeric] (19, 5) NOT NULL,
[EFICASSTL] [numeric] (19, 5) NOT NULL,
[EFICAMTWL] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30200] ADD CONSTRAINT [CK__UPR30200__CHEKDA__64F7DB37] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR30200] ADD CONSTRAINT [PKUPR30200] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR30200] ON [dbo].[UPR30200] ([AUCTRLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR30200] ON [dbo].[UPR30200] ([CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30200].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30200].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[FTXWHLTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[FICASSTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[FICAMTWL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[Uncollected_FICASS_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[Uncollected_FICAMed_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[ADEICPMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[EFICASSTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30200].[EFICAMTWL]'
GO
GRANT SELECT ON  [dbo].[UPR30200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30200] TO [DYNGRP]
GO
