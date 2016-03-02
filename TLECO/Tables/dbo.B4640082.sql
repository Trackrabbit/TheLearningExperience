CREATE TABLE [dbo].[B4640082]
(
[BSSI_Building_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BilledAmount] [numeric] (19, 5) NOT NULL,
[BSSI_PercentRent] [tinyint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640082] ADD CONSTRAINT [CK__B4640082__DATE1__0BC49403] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640082] ADD CONSTRAINT [CK__B4640082__ENDDAT__0DACDC75] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640082] ADD CONSTRAINT [CK__B4640082__STRTDA__0CB8B83C] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640082] ADD CONSTRAINT [PKB4640082] PRIMARY KEY NONCLUSTERED  ([BSSI_Building_ID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640082].[BSSI_Building_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640082].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640082].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640082].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640082].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640082].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640082].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640082].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640082].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640082].[BSSI_BilledAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640082].[BSSI_PercentRent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640082].[BSSI_Dummy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640082].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640082].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B4640082] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640082] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640082] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640082] TO [DYNGRP]
GO
