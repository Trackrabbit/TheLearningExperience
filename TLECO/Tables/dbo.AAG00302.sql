CREATE TABLE [dbo].[AAG00302]
(
[aaDistrQueryID] [int] NOT NULL,
[aaColumn] [smallint] NOT NULL,
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
ALTER TABLE [dbo].[AAG00302] ADD CONSTRAINT [CK__AAG00302__aaFrom__2769811C] CHECK ((datepart(hour,[aaFromDate])=(0) AND datepart(minute,[aaFromDate])=(0) AND datepart(second,[aaFromDate])=(0) AND datepart(millisecond,[aaFromDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00302] ADD CONSTRAINT [CK__AAG00302__aaToDa__285DA555] CHECK ((datepart(hour,[aaToDate])=(0) AND datepart(minute,[aaToDate])=(0) AND datepart(second,[aaToDate])=(0) AND datepart(millisecond,[aaToDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00302] ADD CONSTRAINT [PKAAG00302] PRIMARY KEY CLUSTERED  ([aaDistrQueryID], [aaColumn]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00302].[aaDistrQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00302].[aaColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00302].[aaSelectOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[aaFromStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[aaToStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00302].[aaFromNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00302].[aaToNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00302].[aaFromBool]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00302].[aaToBool]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00302].[aaFromDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00302].[aaToDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[From_Account_Number_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[From_Account_Number_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[From_Account_Number_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[From_Account_Number_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[To_Account_Number_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[To_Account_Number_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[To_Account_Number_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00302].[To_Account_Number_4]'
GO
GRANT SELECT ON  [dbo].[AAG00302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00302] TO [DYNGRP]
GO
