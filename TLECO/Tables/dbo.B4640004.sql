CREATE TABLE [dbo].[B4640004]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_LastDateReport] [datetime] NOT NULL,
[BSSI_ReportedAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ReportedDate] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_SalesNumberStatus] [smallint] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Reference] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_NumOfReminders] [smallint] NOT NULL,
[BSSI_LastReminder] [datetime] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LateChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_LateChargeRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DateCharged] [datetime] NOT NULL,
[BSSI_ConfirmedUserID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ConfirmedDate] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ConfirmedCB] [tinyint] NOT NULL,
[BSSI_ChargeLineSeq] [numeric] (19, 5) NOT NULL,
[BSSI_YearEndChargeLineSe] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Report_Import] [tinyint] NOT NULL,
[BSSI_ReversingChargeLine] [numeric] (19, 5) NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__BSSI_C__777E6F8B] CHECK ((datepart(hour,[BSSI_ConfirmedDate])=(0) AND datepart(minute,[BSSI_ConfirmedDate])=(0) AND datepart(second,[BSSI_ConfirmedDate])=(0) AND datepart(millisecond,[BSSI_ConfirmedDate])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__BSSI_D__768A4B52] CHECK ((datepart(hour,[BSSI_DateCharged])=(0) AND datepart(minute,[BSSI_DateCharged])=(0) AND datepart(second,[BSSI_DateCharged])=(0) AND datepart(millisecond,[BSSI_DateCharged])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__BSSI_L__72B9BA6E] CHECK ((datepart(hour,[BSSI_LastDateReport])=(0) AND datepart(minute,[BSSI_LastDateReport])=(0) AND datepart(second,[BSSI_LastDateReport])=(0) AND datepart(millisecond,[BSSI_LastDateReport])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__BSSI_L__75962719] CHECK ((datepart(hour,[BSSI_LastReminder])=(0) AND datepart(minute,[BSSI_LastReminder])=(0) AND datepart(second,[BSSI_LastReminder])=(0) AND datepart(millisecond,[BSSI_LastReminder])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__BSSI_R__73ADDEA7] CHECK ((datepart(hour,[BSSI_ReportedDate])=(0) AND datepart(minute,[BSSI_ReportedDate])=(0) AND datepart(second,[BSSI_ReportedDate])=(0) AND datepart(millisecond,[BSSI_ReportedDate])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__DATE1__74A202E0] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__ENDDAT__71C59635] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [CK__B4640004__STRTDA__70D171FC] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640004] ADD CONSTRAINT [PKB4640004] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13B4640004] ON [dbo].[B4640004] ([BSSI_Description], [LOCNCODE], [LNSEQNBR], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_LastDateReport], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_SalesNumberStatus], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [ENDDATE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [STRTDATE], [ENDDATE], [BSSI_SalesNumberStatus], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4640004] ON [dbo].[B4640004] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640004] ON [dbo].[B4640004] ([ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4640004] ON [dbo].[B4640004] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[BSSI_LastDateReport]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_ReportedAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[BSSI_ReportedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[BSSI_SalesNumberStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[BSSI_NumOfReminders]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[BSSI_LastReminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_LateChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_LateChargeRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[BSSI_DateCharged]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_ConfirmedUserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640004].[BSSI_ConfirmedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[BSSI_ConfirmedCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_ChargeLineSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_YearEndChargeLineSe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[BSSI_Sales_Report_Import]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640004].[BSSI_ReversingChargeLine]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640004].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640004].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640004] TO [DYNGRP]
GO
