CREATE TABLE [dbo].[DDB10300]
(
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Type] [smallint] NOT NULL,
[Maximum_SmartList_Record] [int] NOT NULL,
[Search_Field_Numbers_1] [smallint] NOT NULL,
[Search_Field_Numbers_2] [smallint] NOT NULL,
[Search_Field_Numbers_3] [smallint] NOT NULL,
[Search_Field_Numbers_4] [smallint] NOT NULL,
[Comparison_Types_1] [smallint] NOT NULL,
[Comparison_Types_2] [smallint] NOT NULL,
[Comparison_Types_3] [smallint] NOT NULL,
[Comparison_Types_4] [smallint] NOT NULL,
[Search_Date_Method_1] [smallint] NOT NULL,
[Search_Date_Method_2] [smallint] NOT NULL,
[Search_Date_Method_3] [smallint] NOT NULL,
[Search_Date_Method_4] [smallint] NOT NULL,
[Search_Dates_1] [datetime] NOT NULL,
[Search_Dates_2] [datetime] NOT NULL,
[Search_Dates_3] [datetime] NOT NULL,
[Search_Dates_4] [datetime] NOT NULL,
[Search_Strings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Numbers_1] [smallint] NOT NULL,
[Search_Numbers_2] [smallint] NOT NULL,
[Search_Numbers_3] [smallint] NOT NULL,
[Search_Numbers_4] [smallint] NOT NULL,
[Search_Times_1] [datetime] NOT NULL,
[Search_Times_2] [datetime] NOT NULL,
[Search_Times_3] [datetime] NOT NULL,
[Search_Times_4] [datetime] NOT NULL,
[Field_Comparison_1] [tinyint] NOT NULL,
[Field_Comparison_2] [tinyint] NOT NULL,
[Field_Comparison_3] [tinyint] NOT NULL,
[Field_Comparison_4] [tinyint] NOT NULL,
[Search_Account_Indexes_1] [int] NOT NULL,
[Search_Account_Indexes_2] [int] NOT NULL,
[Search_Account_Indexes_3] [int] NOT NULL,
[Search_Account_Indexes_4] [int] NOT NULL,
[To_Search_Account_Indexe_1] [int] NOT NULL,
[To_Search_Account_Indexe_2] [int] NOT NULL,
[To_Search_Account_Indexe_3] [int] NOT NULL,
[To_Search_Account_Indexe_4] [int] NOT NULL,
[To_Search_Date_Method_1] [smallint] NOT NULL,
[To_Search_Date_Method_2] [smallint] NOT NULL,
[To_Search_Date_Method_3] [smallint] NOT NULL,
[To_Search_Date_Method_4] [smallint] NOT NULL,
[To_Search_Dates_1] [datetime] NOT NULL,
[To_Search_Dates_2] [datetime] NOT NULL,
[To_Search_Dates_3] [datetime] NOT NULL,
[To_Search_Dates_4] [datetime] NOT NULL,
[To_Search_Numbers_1] [smallint] NOT NULL,
[To_Search_Numbers_2] [smallint] NOT NULL,
[To_Search_Numbers_3] [smallint] NOT NULL,
[To_Search_Numbers_4] [smallint] NOT NULL,
[To_Search_Strings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Search_Strings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Search_Strings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Search_Strings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Search_Times_1] [datetime] NOT NULL,
[To_Search_Times_2] [datetime] NOT NULL,
[To_Search_Times_3] [datetime] NOT NULL,
[To_Search_Times_4] [datetime] NOT NULL,
[Parameter_Field_1] [tinyint] NOT NULL,
[Parameter_Field_2] [tinyint] NOT NULL,
[Parameter_Field_3] [tinyint] NOT NULL,
[Parameter_Field_4] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__35A7EF71] CHECK ((datepart(day,[Search_Times_1])=(1) AND datepart(month,[Search_Times_1])=(1) AND datepart(year,[Search_Times_1])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__369C13AA] CHECK ((datepart(day,[Search_Times_2])=(1) AND datepart(month,[Search_Times_2])=(1) AND datepart(year,[Search_Times_2])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__379037E3] CHECK ((datepart(day,[Search_Times_3])=(1) AND datepart(month,[Search_Times_3])=(1) AND datepart(year,[Search_Times_3])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__38845C1C] CHECK ((datepart(day,[Search_Times_4])=(1) AND datepart(month,[Search_Times_4])=(1) AND datepart(year,[Search_Times_4])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3D491139] CHECK ((datepart(day,[To_Search_Times_1])=(1) AND datepart(month,[To_Search_Times_1])=(1) AND datepart(year,[To_Search_Times_1])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3E3D3572] CHECK ((datepart(day,[To_Search_Times_2])=(1) AND datepart(month,[To_Search_Times_2])=(1) AND datepart(year,[To_Search_Times_2])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3F3159AB] CHECK ((datepart(day,[To_Search_Times_3])=(1) AND datepart(month,[To_Search_Times_3])=(1) AND datepart(year,[To_Search_Times_3])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__40257DE4] CHECK ((datepart(day,[To_Search_Times_4])=(1) AND datepart(month,[To_Search_Times_4])=(1) AND datepart(year,[To_Search_Times_4])=(1900)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__31D75E8D] CHECK ((datepart(hour,[Search_Dates_1])=(0) AND datepart(minute,[Search_Dates_1])=(0) AND datepart(second,[Search_Dates_1])=(0) AND datepart(millisecond,[Search_Dates_1])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__32CB82C6] CHECK ((datepart(hour,[Search_Dates_2])=(0) AND datepart(minute,[Search_Dates_2])=(0) AND datepart(second,[Search_Dates_2])=(0) AND datepart(millisecond,[Search_Dates_2])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__33BFA6FF] CHECK ((datepart(hour,[Search_Dates_3])=(0) AND datepart(minute,[Search_Dates_3])=(0) AND datepart(second,[Search_Dates_3])=(0) AND datepart(millisecond,[Search_Dates_3])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__Search__34B3CB38] CHECK ((datepart(hour,[Search_Dates_4])=(0) AND datepart(minute,[Search_Dates_4])=(0) AND datepart(second,[Search_Dates_4])=(0) AND datepart(millisecond,[Search_Dates_4])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__39788055] CHECK ((datepart(hour,[To_Search_Dates_1])=(0) AND datepart(minute,[To_Search_Dates_1])=(0) AND datepart(second,[To_Search_Dates_1])=(0) AND datepart(millisecond,[To_Search_Dates_1])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3A6CA48E] CHECK ((datepart(hour,[To_Search_Dates_2])=(0) AND datepart(minute,[To_Search_Dates_2])=(0) AND datepart(second,[To_Search_Dates_2])=(0) AND datepart(millisecond,[To_Search_Dates_2])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3B60C8C7] CHECK ((datepart(hour,[To_Search_Dates_3])=(0) AND datepart(minute,[To_Search_Dates_3])=(0) AND datepart(second,[To_Search_Dates_3])=(0) AND datepart(millisecond,[To_Search_Dates_3])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [CK__DDB10300__To_Sea__3C54ED00] CHECK ((datepart(hour,[To_Search_Dates_4])=(0) AND datepart(minute,[To_Search_Dates_4])=(0) AND datepart(second,[To_Search_Dates_4])=(0) AND datepart(millisecond,[To_Search_Dates_4])=(0)))
GO
ALTER TABLE [dbo].[DDB10300] ADD CONSTRAINT [PKDDB10300] PRIMARY KEY NONCLUSTERED  ([Drill_Down_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[Drill_Down_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Maximum_SmartList_Record]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Field_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Field_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Field_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Field_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Comparison_Types_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Comparison_Types_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Comparison_Types_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Comparison_Types_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Date_Method_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Date_Method_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Date_Method_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Date_Method_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Dates_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Dates_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Dates_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Dates_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[Search_Strings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[Search_Strings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[Search_Strings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[Search_Strings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Times_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Times_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Times_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[Search_Times_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Field_Comparison_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Field_Comparison_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Field_Comparison_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Field_Comparison_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Account_Indexes_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Account_Indexes_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Account_Indexes_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Search_Account_Indexes_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Account_Indexe_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Account_Indexe_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Account_Indexe_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Account_Indexe_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Date_Method_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Date_Method_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Date_Method_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Date_Method_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Dates_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Dates_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Dates_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Dates_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[To_Search_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[To_Search_Strings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[To_Search_Strings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[To_Search_Strings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10300].[To_Search_Strings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Times_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Times_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Times_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10300].[To_Search_Times_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Parameter_Field_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Parameter_Field_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Parameter_Field_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10300].[Parameter_Field_4]'
GO
GRANT SELECT ON  [dbo].[DDB10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DDB10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DDB10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DDB10300] TO [DYNGRP]
GO
