CREATE TABLE [dbo].[B4640009]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ReconciliationOpt] [smallint] NOT NULL,
[BSSI_ProrationOpt] [smallint] NOT NULL,
[BSSI_MRReconcileOpt] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640009] ADD CONSTRAINT [CK__B4640009__ENDDAT__79D0CC51] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640009] ADD CONSTRAINT [CK__B4640009__STRTDA__78DCA818] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640009] ADD CONSTRAINT [PKB4640009] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640009].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640009].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640009].[BSSI_ReconciliationOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640009].[BSSI_ProrationOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640009].[BSSI_MRReconcileOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640009].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640009].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B4640009] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640009] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640009] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640009] TO [DYNGRP]
GO
