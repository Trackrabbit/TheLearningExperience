CREATE TABLE [dbo].[B4602211]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Period_Begin] [datetime] NOT NULL,
[BSSI_Period_End] [datetime] NOT NULL,
[BSSI_Renewal_Type] [smallint] NOT NULL,
[BSSI_Lead_Time] [smallint] NOT NULL,
[BSSI_Notice_Requirements] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602211] ADD CONSTRAINT [CK__B4602211__BSSI_P__0A122112] CHECK ((datepart(hour,[BSSI_Period_Begin])=(0) AND datepart(minute,[BSSI_Period_Begin])=(0) AND datepart(second,[BSSI_Period_Begin])=(0) AND datepart(millisecond,[BSSI_Period_Begin])=(0)))
GO
ALTER TABLE [dbo].[B4602211] ADD CONSTRAINT [CK__B4602211__BSSI_P__0B06454B] CHECK ((datepart(hour,[BSSI_Period_End])=(0) AND datepart(minute,[BSSI_Period_End])=(0) AND datepart(second,[BSSI_Period_End])=(0) AND datepart(millisecond,[BSSI_Period_End])=(0)))
GO
ALTER TABLE [dbo].[B4602211] ADD CONSTRAINT [PKB4602211] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602211] ON [dbo].[B4602211] ([BSSI_Tenant_Lease_Number], [BSSI_Period_Begin], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602211].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602211].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602211].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602211].[BSSI_Period_Begin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602211].[BSSI_Period_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602211].[BSSI_Renewal_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602211].[BSSI_Lead_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602211].[BSSI_Notice_Requirements]'
GO
GRANT SELECT ON  [dbo].[B4602211] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602211] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602211] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602211] TO [DYNGRP]
GO
