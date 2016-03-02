CREATE TABLE [dbo].[B4693201]
(
[BSSIChargeRateScheduleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Effective_Date] [datetime] NOT NULL,
[BSSI_Rate] [numeric] (19, 5) NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[BSSI_ChangeRate] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4693201] ADD CONSTRAINT [CK__B4693201__BSSI_E__16772CA0] CHECK ((datepart(hour,[BSSI_Effective_Date])=(0) AND datepart(minute,[BSSI_Effective_Date])=(0) AND datepart(second,[BSSI_Effective_Date])=(0) AND datepart(millisecond,[BSSI_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[B4693201] ADD CONSTRAINT [PKB4693201] PRIMARY KEY NONCLUSTERED  ([BSSIChargeRateScheduleID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4693201] ON [dbo].[B4693201] ([BSSIChargeRateScheduleID], [BSSI_Effective_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4693201].[BSSIChargeRateScheduleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693201].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4693201].[BSSI_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4693201].[BSSI_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4693201].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4693201].[BSSI_ChangeRate]'
GO
GRANT SELECT ON  [dbo].[B4693201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4693201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4693201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4693201] TO [DYNGRP]
GO
