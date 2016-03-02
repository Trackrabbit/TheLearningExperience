CREATE TABLE [dbo].[B4690200]
(
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4690200] ADD CONSTRAINT [CK__B4690200__ENDTIM__705C70B0] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[B4690200] ADD CONSTRAINT [CK__B4690200__STRTTI__6F684C77] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[B4690200] ADD CONSTRAINT [PKB4690200] PRIMARY KEY NONCLUSTERED  ([LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690200].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690200].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690200].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690200].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690200].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690200].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690200].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690200].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690200].[QUANTITY]'
GO
GRANT SELECT ON  [dbo].[B4690200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4690200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4690200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4690200] TO [DYNGRP]
GO
