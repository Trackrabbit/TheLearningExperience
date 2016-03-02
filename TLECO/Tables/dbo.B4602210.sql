CREATE TABLE [dbo].[B4602210]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Period] [smallint] NOT NULL,
[BSSI_Period_Begin] [datetime] NOT NULL,
[BSSI_Period_End] [datetime] NOT NULL,
[BSSI_Renewal_Type] [smallint] NOT NULL,
[BSSI_Lead_Time] [smallint] NOT NULL,
[BSSI_Notice_Deadline] [datetime] NOT NULL,
[BSSI_Actual_Notice_Date] [datetime] NOT NULL,
[BSSI_Sent_Notice] [tinyint] NOT NULL,
[BSSI_Received_Notice] [tinyint] NOT NULL,
[BSSI_Notice_Requirements] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Edited] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602210] ADD CONSTRAINT [CK__B4602210__BSSI_A__71467348] CHECK ((datepart(hour,[BSSI_Actual_Notice_Date])=(0) AND datepart(minute,[BSSI_Actual_Notice_Date])=(0) AND datepart(second,[BSSI_Actual_Notice_Date])=(0) AND datepart(millisecond,[BSSI_Actual_Notice_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602210] ADD CONSTRAINT [CK__B4602210__BSSI_N__70524F0F] CHECK ((datepart(hour,[BSSI_Notice_Deadline])=(0) AND datepart(minute,[BSSI_Notice_Deadline])=(0) AND datepart(second,[BSSI_Notice_Deadline])=(0) AND datepart(millisecond,[BSSI_Notice_Deadline])=(0)))
GO
ALTER TABLE [dbo].[B4602210] ADD CONSTRAINT [CK__B4602210__BSSI_P__6E6A069D] CHECK ((datepart(hour,[BSSI_Period_Begin])=(0) AND datepart(minute,[BSSI_Period_Begin])=(0) AND datepart(second,[BSSI_Period_Begin])=(0) AND datepart(millisecond,[BSSI_Period_Begin])=(0)))
GO
ALTER TABLE [dbo].[B4602210] ADD CONSTRAINT [CK__B4602210__BSSI_P__6F5E2AD6] CHECK ((datepart(hour,[BSSI_Period_End])=(0) AND datepart(minute,[BSSI_Period_End])=(0) AND datepart(second,[BSSI_Period_End])=(0) AND datepart(millisecond,[BSSI_Period_End])=(0)))
GO
ALTER TABLE [dbo].[B4602210] ADD CONSTRAINT [PKB4602210] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602210] ON [dbo].[B4602210] ([BSSI_Tenant_Lease_Number], [BSSI_Period], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602210] ON [dbo].[B4602210] ([BSSI_Tenant_Lease_Number], [BSSI_Period_Begin], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602210].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602210].[BSSI_Period_Begin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602210].[BSSI_Period_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Renewal_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Lead_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602210].[BSSI_Notice_Deadline]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602210].[BSSI_Actual_Notice_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Sent_Notice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Received_Notice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602210].[BSSI_Notice_Requirements]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602210].[BSSI_Edited]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602210].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602210] TO [DYNGRP]
GO
