CREATE TABLE [dbo].[B4610002]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_SalesReportFreqcy] [smallint] NOT NULL,
[BSSI_SICCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_SalesAuditFreqcy] [smallint] NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Leased_Space_SM] [numeric] (19, 5) NOT NULL,
[BSSI_MeterReadingFreqcy] [smallint] NOT NULL,
[BSSI_NAICS] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Reporting] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4610002] ADD CONSTRAINT [CK__B4610002__ENDDAT__4AEBC036] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4610002] ADD CONSTRAINT [CK__B4610002__STRTDA__49F79BFD] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4610002] ADD CONSTRAINT [PKB4610002] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4610002] ON [dbo].[B4610002] ([BSSI_Tenant_Lease_Number], [LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4610002] ON [dbo].[B4610002] ([LOCNCODE], [BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610002].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610002].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610002].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4610002].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4610002].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610002].[BSSI_SalesReportFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610002].[BSSI_SICCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610002].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610002].[BSSI_SalesAuditFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610002].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610002].[BSSI_Leased_Space_SM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610002].[BSSI_MeterReadingFreqcy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610002].[BSSI_NAICS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610002].[BSSI_Reporting]'
GO
GRANT SELECT ON  [dbo].[B4610002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4610002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4610002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4610002] TO [DYNGRP]
GO
