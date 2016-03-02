CREATE TABLE [dbo].[SLB10400]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[GoTo_Description] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[PRCDNAME] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Date_Method_1] [smallint] NOT NULL,
[Search_Date_Method_2] [smallint] NOT NULL,
[Search_Date_Method_3] [smallint] NOT NULL,
[Search_Date_Method_4] [smallint] NOT NULL,
[Search_Dates_1] [datetime] NOT NULL,
[Search_Dates_2] [datetime] NOT NULL,
[Search_Dates_3] [datetime] NOT NULL,
[Search_Dates_4] [datetime] NOT NULL,
[Search_Field_Numbers_1] [smallint] NOT NULL,
[Search_Field_Numbers_2] [smallint] NOT NULL,
[Search_Field_Numbers_3] [smallint] NOT NULL,
[Search_Field_Numbers_4] [smallint] NOT NULL,
[Search_Strings_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Strings_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Search_Times_1] [datetime] NOT NULL,
[Search_Times_2] [datetime] NOT NULL,
[Search_Times_3] [datetime] NOT NULL,
[Search_Times_4] [datetime] NOT NULL,
[Comparison_Types_1] [smallint] NOT NULL,
[Comparison_Types_2] [smallint] NOT NULL,
[Comparison_Types_3] [smallint] NOT NULL,
[Comparison_Types_4] [smallint] NOT NULL,
[Field_Comparison_1] [tinyint] NOT NULL,
[Field_Comparison_2] [tinyint] NOT NULL,
[Field_Comparison_3] [tinyint] NOT NULL,
[Field_Comparison_4] [tinyint] NOT NULL,
[SmartList_Field_1] [tinyint] NOT NULL,
[SmartList_Field_2] [tinyint] NOT NULL,
[SmartList_Field_3] [tinyint] NOT NULL,
[SmartList_Field_4] [tinyint] NOT NULL,
[Maximum_SmartList_Record] [int] NOT NULL,
[Search_Type] [smallint] NOT NULL,
[Search_Account_Indexes_1] [int] NOT NULL,
[Search_Account_Indexes_2] [int] NOT NULL,
[Search_Account_Indexes_3] [int] NOT NULL,
[Search_Account_Indexes_4] [int] NOT NULL,
[SmartList_Number] [smallint] NOT NULL,
[Search_Numbers_1] [smallint] NOT NULL,
[Search_Numbers_2] [smallint] NOT NULL,
[Search_Numbers_3] [smallint] NOT NULL,
[Search_Numbers_4] [smallint] NOT NULL,
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
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__2882FE7D] CHECK ((datepart(day,[Search_Times_1])=(1) AND datepart(month,[Search_Times_1])=(1) AND datepart(year,[Search_Times_1])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__297722B6] CHECK ((datepart(day,[Search_Times_2])=(1) AND datepart(month,[Search_Times_2])=(1) AND datepart(year,[Search_Times_2])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__2A6B46EF] CHECK ((datepart(day,[Search_Times_3])=(1) AND datepart(month,[Search_Times_3])=(1) AND datepart(year,[Search_Times_3])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__2B5F6B28] CHECK ((datepart(day,[Search_Times_4])=(1) AND datepart(month,[Search_Times_4])=(1) AND datepart(year,[Search_Times_4])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__2D47B39A] CHECK ((datepart(day,[To_Search_Times_1])=(1) AND datepart(month,[To_Search_Times_1])=(1) AND datepart(year,[To_Search_Times_1])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__2E3BD7D3] CHECK ((datepart(day,[To_Search_Times_2])=(1) AND datepart(month,[To_Search_Times_2])=(1) AND datepart(year,[To_Search_Times_2])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__2F2FFC0C] CHECK ((datepart(day,[To_Search_Times_3])=(1) AND datepart(month,[To_Search_Times_3])=(1) AND datepart(year,[To_Search_Times_3])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__30242045] CHECK ((datepart(day,[To_Search_Times_4])=(1) AND datepart(month,[To_Search_Times_4])=(1) AND datepart(year,[To_Search_Times_4])=(1900)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__24B26D99] CHECK ((datepart(hour,[Search_Dates_1])=(0) AND datepart(minute,[Search_Dates_1])=(0) AND datepart(second,[Search_Dates_1])=(0) AND datepart(millisecond,[Search_Dates_1])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__25A691D2] CHECK ((datepart(hour,[Search_Dates_2])=(0) AND datepart(minute,[Search_Dates_2])=(0) AND datepart(second,[Search_Dates_2])=(0) AND datepart(millisecond,[Search_Dates_2])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__269AB60B] CHECK ((datepart(hour,[Search_Dates_3])=(0) AND datepart(minute,[Search_Dates_3])=(0) AND datepart(second,[Search_Dates_3])=(0) AND datepart(millisecond,[Search_Dates_3])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__Search__278EDA44] CHECK ((datepart(hour,[Search_Dates_4])=(0) AND datepart(minute,[Search_Dates_4])=(0) AND datepart(second,[Search_Dates_4])=(0) AND datepart(millisecond,[Search_Dates_4])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__3118447E] CHECK ((datepart(hour,[To_Search_Dates_1])=(0) AND datepart(minute,[To_Search_Dates_1])=(0) AND datepart(second,[To_Search_Dates_1])=(0) AND datepart(millisecond,[To_Search_Dates_1])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__320C68B7] CHECK ((datepart(hour,[To_Search_Dates_2])=(0) AND datepart(minute,[To_Search_Dates_2])=(0) AND datepart(second,[To_Search_Dates_2])=(0) AND datepart(millisecond,[To_Search_Dates_2])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__33008CF0] CHECK ((datepart(hour,[To_Search_Dates_3])=(0) AND datepart(minute,[To_Search_Dates_3])=(0) AND datepart(second,[To_Search_Dates_3])=(0) AND datepart(millisecond,[To_Search_Dates_3])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [CK__SLB10400__To_Sea__2C538F61] CHECK ((datepart(hour,[To_Search_Dates_4])=(0) AND datepart(minute,[To_Search_Dates_4])=(0) AND datepart(second,[To_Search_Dates_4])=(0) AND datepart(millisecond,[To_Search_Dates_4])=(0)))
GO
ALTER TABLE [dbo].[SLB10400] ADD CONSTRAINT [PKSLB10400] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[GoTo_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[GoTo_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[FORMNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[PRCDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Date_Method_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Date_Method_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Date_Method_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Date_Method_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Dates_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Dates_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Dates_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Dates_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Field_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Field_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Field_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Field_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Search_Strings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Search_Strings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Search_Strings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Search_Strings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Times_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Times_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Times_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[Search_Times_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Comparison_Types_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Comparison_Types_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Comparison_Types_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Comparison_Types_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Field_Comparison_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Field_Comparison_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Field_Comparison_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Field_Comparison_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[SmartList_Field_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[SmartList_Field_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[SmartList_Field_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[SmartList_Field_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Maximum_SmartList_Record]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Account_Indexes_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Account_Indexes_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Account_Indexes_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Account_Indexes_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[SmartList_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Search_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Account_Indexe_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Account_Indexe_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Account_Indexe_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Account_Indexe_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Date_Method_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Date_Method_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Date_Method_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Date_Method_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Dates_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Dates_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Dates_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Dates_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Numbers_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Numbers_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Numbers_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[To_Search_Numbers_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[To_Search_Strings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[To_Search_Strings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[To_Search_Strings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[To_Search_Strings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Times_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Times_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Times_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10400].[To_Search_Times_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10400].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10400].[Drill_Down_ID]'
GO
GRANT SELECT ON  [dbo].[SLB10400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10400] TO [DYNGRP]
GO
