CREATE TABLE [dbo].[B4602941]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Escalation_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ACTSTARTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Is_Prorate_First_Pe] [tinyint] NOT NULL,
[BSSI_Is_Prorate_Last_Per] [tinyint] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Discount_Amount] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Anniversary_Date_Ty] [smallint] NOT NULL,
[BSSI_Anniversary_Date] [datetime] NOT NULL,
[BSSI_Create_InvoicedLadj] [tinyint] NOT NULL,
[BSSI_Disable_Month_Start] [tinyint] NOT NULL,
[BSSI_Not_Extendable] [tinyint] NOT NULL,
[BSSI_Calculate_Straight_] [tinyint] NOT NULL,
[BSSI_Adjust_SL_Num_Perio] [tinyint] NOT NULL,
[BSSI_SL_Calc_Option] [smallint] NOT NULL,
[BSSI_SL_Start_Date] [datetime] NOT NULL,
[BSSI_SL_End_Date] [datetime] NOT NULL,
[BSSI_SL_First_ProRated] [numeric] (19, 5) NOT NULL,
[BSSI_SL_Last_ProRated] [numeric] (19, 5) NOT NULL,
[BSSI_Total_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Average_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_NumberOfPeriods] [numeric] (19, 5) NOT NULL,
[BSSI_NoAmendProration] [tinyint] NOT NULL,
[BSSI_SpecialDeferralCal] [tinyint] NOT NULL,
[BSSI_StraightLineDeferra] [tinyint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[BSSI_Create_InvSLAdj] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__ACTSTA__51B7EDFF] CHECK ((datepart(hour,[ACTSTARTDATE])=(0) AND datepart(minute,[ACTSTARTDATE])=(0) AND datepart(second,[ACTSTARTDATE])=(0) AND datepart(millisecond,[ACTSTARTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__BSSI_A__53A03671] CHECK ((datepart(hour,[BSSI_Anniversary_Date])=(0) AND datepart(minute,[BSSI_Anniversary_Date])=(0) AND datepart(second,[BSSI_Anniversary_Date])=(0) AND datepart(millisecond,[BSSI_Anniversary_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__BSSI_S__55887EE3] CHECK ((datepart(hour,[BSSI_SL_End_Date])=(0) AND datepart(minute,[BSSI_SL_End_Date])=(0) AND datepart(second,[BSSI_SL_End_Date])=(0) AND datepart(millisecond,[BSSI_SL_End_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__BSSI_S__54945AAA] CHECK ((datepart(hour,[BSSI_SL_Start_Date])=(0) AND datepart(minute,[BSSI_SL_Start_Date])=(0) AND datepart(second,[BSSI_SL_Start_Date])=(0) AND datepart(millisecond,[BSSI_SL_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__ENDDAT__52AC1238] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [CK__B4602941__STRTDA__50C3C9C6] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602941] ADD CONSTRAINT [PKB4602941] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602941] ON [dbo].[B4602941] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602941].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602941].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602941].[BSSI_Escalation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[ACTSTARTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Is_Prorate_First_Pe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Is_Prorate_Last_Per]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_Discount_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Anniversary_Date_Ty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[BSSI_Anniversary_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Create_InvoicedLadj]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Disable_Month_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Not_Extendable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Calculate_Straight_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Adjust_SL_Num_Perio]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_SL_Calc_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[BSSI_SL_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602941].[BSSI_SL_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_SL_First_ProRated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_SL_Last_ProRated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_Total_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_Average_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[BSSI_NumberOfPeriods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_NoAmendProration]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_SpecialDeferralCal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_StraightLineDeferra]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Dummy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602941].[BSSI_Create_InvSLAdj]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602941].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602941] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602941] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602941] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602941] TO [DYNGRP]
GO
