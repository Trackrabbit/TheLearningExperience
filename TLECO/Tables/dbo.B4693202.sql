CREATE TABLE [dbo].[B4693202]
(
[BSSIChargeRateScheduleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Effective_Date] [datetime] NOT NULL,
[BSSI_Rate] [numeric] (19, 5) NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4693202] ADD CONSTRAINT [CK__B4693202__BSSI_E__0087EB81] CHECK ((datepart(hour,[BSSI_Effective_Date])=(0) AND datepart(minute,[BSSI_Effective_Date])=(0) AND datepart(second,[BSSI_Effective_Date])=(0) AND datepart(millisecond,[BSSI_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[B4693202] ADD CONSTRAINT [PKB4693202] PRIMARY KEY CLUSTERED  ([BSSIChargeRateScheduleID], [LNITMSEQ], [BSSI_Billing_Frequency]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4693202].[BSSIChargeRateScheduleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693202].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4693202].[BSSI_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4693202].[BSSI_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693202].[BSSI_Billing_Frequency]'
GO
GRANT SELECT ON  [dbo].[B4693202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4693202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4693202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4693202] TO [DYNGRP]
GO
