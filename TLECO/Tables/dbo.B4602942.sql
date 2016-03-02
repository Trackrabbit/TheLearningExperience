CREATE TABLE [dbo].[B4602942]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Escalation_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Escalation_Type] [smallint] NOT NULL,
[BSSI_Escalation_Type1] [smallint] NOT NULL,
[BSSI_Increase_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Increase_Percent] [numeric] (19, 5) NOT NULL,
[BSSI_CPI_Date] [datetime] NOT NULL,
[BSSI_CPI_Schedule_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSIChargeRateScheduleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602942] ADD CONSTRAINT [CK__B4602942__BSSI_C__22C7F4EC] CHECK ((datepart(hour,[BSSI_CPI_Date])=(0) AND datepart(minute,[BSSI_CPI_Date])=(0) AND datepart(second,[BSSI_CPI_Date])=(0) AND datepart(millisecond,[BSSI_CPI_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602942] ADD CONSTRAINT [CK__B4602942__ENDDAT__21D3D0B3] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602942] ADD CONSTRAINT [CK__B4602942__STRTDA__20DFAC7A] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602942] ADD CONSTRAINT [PKB4602942] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602942] ON [dbo].[B4602942] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602942] ON [dbo].[B4602942] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602942] ON [dbo].[B4602942] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602942].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602942].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSI_Escalation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602942].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602942].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602942].[BSSI_Escalation_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602942].[BSSI_Escalation_Type1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602942].[BSSI_Increase_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602942].[BSSI_Increase_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602942].[BSSI_CPI_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSI_CPI_Schedule_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602942].[BSSIChargeRateScheduleID]'
GO
GRANT SELECT ON  [dbo].[B4602942] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602942] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602942] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602942] TO [DYNGRP]
GO
