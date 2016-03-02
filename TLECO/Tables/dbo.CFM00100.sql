CREATE TABLE [dbo].[CFM00100]
(
[EBS_Forecast_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Forecast_Description] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Default_Forecast] [tinyint] NOT NULL,
[Last_Calendar_Date] [datetime] NOT NULL,
[Last_Calc_Time] [datetime] NOT NULL,
[BankReconcilation] [tinyint] NOT NULL,
[Opening_Balance_Amount] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[RM_Open] [tinyint] NOT NULL,
[RM_Work] [tinyint] NOT NULL,
[RM_Date_Type] [smallint] NOT NULL,
[SOP] [tinyint] NOT NULL,
[SOP_IncludeQuotes] [tinyint] NOT NULL,
[PM_Open] [tinyint] NOT NULL,
[PM_Work] [tinyint] NOT NULL,
[POP] [tinyint] NOT NULL,
[POP_BasedOn] [smallint] NOT NULL,
[Cash_Management_Transact] [tinyint] NOT NULL,
[Week] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFM00100] ADD CONSTRAINT [CK__CFM00100__Last_C__444BDFDA] CHECK ((datepart(day,[Last_Calc_Time])=(1) AND datepart(month,[Last_Calc_Time])=(1) AND datepart(year,[Last_Calc_Time])=(1900)))
GO
ALTER TABLE [dbo].[CFM00100] ADD CONSTRAINT [CK__CFM00100__Last_C__4357BBA1] CHECK ((datepart(hour,[Last_Calendar_Date])=(0) AND datepart(minute,[Last_Calendar_Date])=(0) AND datepart(second,[Last_Calendar_Date])=(0) AND datepart(millisecond,[Last_Calendar_Date])=(0)))
GO
ALTER TABLE [dbo].[CFM00100] ADD CONSTRAINT [PKCFM00100] PRIMARY KEY CLUSTERED  ([EBS_Forecast_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CFM00100] ON [dbo].[CFM00100] ([EBS_Forecast_ID], [Default_Forecast]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM00100].[EBS_Forecast_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM00100].[Forecast_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[Default_Forecast]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFM00100].[Last_Calendar_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFM00100].[Last_Calc_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[BankReconcilation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CFM00100].[Opening_Balance_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[RM_Open]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[RM_Work]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[RM_Date_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[SOP_IncludeQuotes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[PM_Open]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[PM_Work]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[POP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[POP_BasedOn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[Cash_Management_Transact]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM00100].[Week]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CFM00100].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[CFM00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM00100] TO [DYNGRP]
GO
