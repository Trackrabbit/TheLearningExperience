CREATE TABLE [dbo].[B4640013]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_AuditedAmount] [numeric] (19, 5) NOT NULL,
[BSSI_ReportedDate] [datetime] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[BSSI_LastDateReport] [datetime] NOT NULL,
[BSSI_NumOfReminders] [smallint] NOT NULL,
[BSSI_LastReminder] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Date_Entered] [datetime] NOT NULL,
[BSSI_SalesNumberStatus] [smallint] NOT NULL,
[BSSI_Sales_Report_Import] [tinyint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__BSSI_D__2B331DBB] CHECK ((datepart(hour,[BSSI_Date_Entered])=(0) AND datepart(minute,[BSSI_Date_Entered])=(0) AND datepart(second,[BSSI_Date_Entered])=(0) AND datepart(millisecond,[BSSI_Date_Entered])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__BSSI_L__294AD549] CHECK ((datepart(hour,[BSSI_LastDateReport])=(0) AND datepart(minute,[BSSI_LastDateReport])=(0) AND datepart(second,[BSSI_LastDateReport])=(0) AND datepart(millisecond,[BSSI_LastDateReport])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__BSSI_L__2A3EF982] CHECK ((datepart(hour,[BSSI_LastReminder])=(0) AND datepart(minute,[BSSI_LastReminder])=(0) AND datepart(second,[BSSI_LastReminder])=(0) AND datepart(millisecond,[BSSI_LastReminder])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__BSSI_R__2856B110] CHECK ((datepart(hour,[BSSI_ReportedDate])=(0) AND datepart(minute,[BSSI_ReportedDate])=(0) AND datepart(second,[BSSI_ReportedDate])=(0) AND datepart(millisecond,[BSSI_ReportedDate])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__ENDDAT__27628CD7] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [CK__B4640013__STRTDA__266E689E] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640013] ADD CONSTRAINT [PKB4640013] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B4640013] ON [dbo].[B4640013] ([BSSI_Description], [LOCNCODE], [LNSEQNBR], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_LastDateReport], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_ReportedDate], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4640013] ON [dbo].[B4640013] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640013] ON [dbo].[B4640013] ([ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4640013] ON [dbo].[B4640013] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640013].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640013].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640013].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640013].[BSSI_AuditedAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[BSSI_ReportedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[BSSI_LastDateReport]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[BSSI_NumOfReminders]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[BSSI_LastReminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640013].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640013].[BSSI_Date_Entered]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[BSSI_SalesNumberStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[BSSI_Sales_Report_Import]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640013].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640013].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640013] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640013] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640013] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640013] TO [DYNGRP]
GO
