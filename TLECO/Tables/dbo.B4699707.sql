CREATE TABLE [dbo].[B4699707]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4699707] ADD CONSTRAINT [CK__B4699707__ENDDAT__15D8D979] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4699707] ADD CONSTRAINT [CK__B4699707__STRTDA__14E4B540] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4699707] ADD CONSTRAINT [PKB4699707] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [CMPNTSEQ], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699707].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699707].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699707].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699707].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[BSSI_LeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699707].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699707].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699707].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699707].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B4699707] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4699707] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4699707] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4699707] TO [DYNGRP]
GO
