CREATE TABLE [dbo].[PP000010]
(
[PP_Profile_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Module] [smallint] NOT NULL,
[OFFINDX] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[PP_Deferred_BC_Index] [int] NOT NULL,
[PP_Deferrals_Transfer_In] [int] NOT NULL,
[PP_Recognition_Index] [int] NOT NULL,
[PP_Calculation_Method] [smallint] NOT NULL,
[PP_Debit_Credit_1] [smallint] NOT NULL,
[PP_Debit_Credit_2] [smallint] NOT NULL,
[PP_Debit_Credit_3] [smallint] NOT NULL,
[PP_Debit_Credit_4] [smallint] NOT NULL,
[PP_Debit_Credit_5] [smallint] NOT NULL,
[PP_Debit_Credit_6] [smallint] NOT NULL,
[PP_Debit_Credit_7] [smallint] NOT NULL,
[PP_Debit_Credit_8] [smallint] NOT NULL,
[PP_Debit_Credit_9] [smallint] NOT NULL,
[PP_Debit_Credit_10] [smallint] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[NUMOFPER] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PP_Overwrite_Original_Di] [tinyint] NOT NULL,
[PP_Miscellaneous_Periods] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000010] ADD CONSTRAINT [CK__PP000010__ENDING__055A8928] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000010] ADD CONSTRAINT [CK__PP000010__STRTNG__064EAD61] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000010] ADD CONSTRAINT [PKPP000010] PRIMARY KEY NONCLUSTERED  ([PP_Profile_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000010].[PP_Profile_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Deferred_BC_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Deferrals_Transfer_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Recognition_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Debit_Credit_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000010].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000010].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[NUMOFPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000010].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Overwrite_Original_Di]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000010].[PP_Miscellaneous_Periods]'
GO
GRANT SELECT ON  [dbo].[PP000010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000010] TO [DYNGRP]
GO
