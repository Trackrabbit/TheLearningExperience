CREATE TABLE [dbo].[AAG00314]
(
[aaMLQueryID] [int] NOT NULL,
[aaColumn] [smallint] NOT NULL,
[aaUseTree] [tinyint] NOT NULL,
[aaUseCodes] [tinyint] NOT NULL,
[aaTreeID] [int] NOT NULL,
[aaTreeLevel] [int] NOT NULL,
[aaInclEmptyCodes] [tinyint] NOT NULL,
[aaSelectOption] [smallint] NOT NULL,
[aaFromStr] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaToStr] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaFromNum] [numeric] (19, 5) NOT NULL,
[aaToNum] [numeric] (19, 5) NOT NULL,
[aaFromBool] [tinyint] NOT NULL,
[aaToBool] [tinyint] NOT NULL,
[aaFromDate] [datetime] NOT NULL,
[aaToDate] [datetime] NOT NULL,
[From_Account_Number_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Account_Number_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Account_Number_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Account_Number_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Account_Number_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Account_Number_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Account_Number_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Account_Number_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00314] ADD CONSTRAINT [CK__AAG00314__aaFrom__30F2EB56] CHECK ((datepart(hour,[aaFromDate])=(0) AND datepart(minute,[aaFromDate])=(0) AND datepart(second,[aaFromDate])=(0) AND datepart(millisecond,[aaFromDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00314] ADD CONSTRAINT [CK__AAG00314__aaToDa__31E70F8F] CHECK ((datepart(hour,[aaToDate])=(0) AND datepart(minute,[aaToDate])=(0) AND datepart(second,[aaToDate])=(0) AND datepart(millisecond,[aaToDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00314] ADD CONSTRAINT [PKAAG00314] PRIMARY KEY CLUSTERED  ([aaMLQueryID], [aaColumn]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaMLQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaUseTree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaUseCodes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaTreeLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaInclEmptyCodes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaSelectOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[aaFromStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[aaToStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00314].[aaFromNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00314].[aaToNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaFromBool]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00314].[aaToBool]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00314].[aaFromDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00314].[aaToDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[From_Account_Number_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[From_Account_Number_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[From_Account_Number_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[From_Account_Number_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[To_Account_Number_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[To_Account_Number_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[To_Account_Number_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00314].[To_Account_Number_4]'
GO
GRANT SELECT ON  [dbo].[AAG00314] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00314] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00314] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00314] TO [DYNGRP]
GO
