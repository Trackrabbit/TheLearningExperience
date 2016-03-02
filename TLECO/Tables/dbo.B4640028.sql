CREATE TABLE [dbo].[B4640028]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_SalesStartDate] [datetime] NOT NULL,
[BSSI_SalesEndDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640028] ADD CONSTRAINT [CK__B4640028__BSSI_S__035A368B] CHECK ((datepart(hour,[BSSI_SalesEndDate])=(0) AND datepart(minute,[BSSI_SalesEndDate])=(0) AND datepart(second,[BSSI_SalesEndDate])=(0) AND datepart(millisecond,[BSSI_SalesEndDate])=(0)))
GO
ALTER TABLE [dbo].[B4640028] ADD CONSTRAINT [CK__B4640028__BSSI_S__02661252] CHECK ((datepart(hour,[BSSI_SalesStartDate])=(0) AND datepart(minute,[BSSI_SalesStartDate])=(0) AND datepart(second,[BSSI_SalesStartDate])=(0) AND datepart(millisecond,[BSSI_SalesStartDate])=(0)))
GO
ALTER TABLE [dbo].[B4640028] ADD CONSTRAINT [PKB4640028] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640028].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640028].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640028].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640028].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640028].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640028].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640028].[BSSI_SalesStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640028].[BSSI_SalesEndDate]'
GO
GRANT SELECT ON  [dbo].[B4640028] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640028] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640028] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640028] TO [DYNGRP]
GO
