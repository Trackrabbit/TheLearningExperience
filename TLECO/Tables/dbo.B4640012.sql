CREATE TABLE [dbo].[B4640012]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_CommDT] [datetime] NOT NULL,
[BSSI_Lease_Termination_D] [datetime] NOT NULL,
[BSSI_SalesReportFreqcy] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640012] ADD CONSTRAINT [CK__B4640012__BSSI_L__1CE4FE64] CHECK ((datepart(hour,[BSSI_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Lease_CommDT])=(0) AND datepart(second,[BSSI_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4640012] ADD CONSTRAINT [CK__B4640012__BSSI_L__1DD9229D] CHECK ((datepart(hour,[BSSI_Lease_Termination_D])=(0) AND datepart(minute,[BSSI_Lease_Termination_D])=(0) AND datepart(second,[BSSI_Lease_Termination_D])=(0) AND datepart(millisecond,[BSSI_Lease_Termination_D])=(0)))
GO
ALTER TABLE [dbo].[B4640012] ADD CONSTRAINT [PKB4640012] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640012].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640012].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640012].[BSSI_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640012].[BSSI_Lease_Termination_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640012].[BSSI_SalesReportFreqcy]'
GO
GRANT SELECT ON  [dbo].[B4640012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640012] TO [DYNGRP]
GO
