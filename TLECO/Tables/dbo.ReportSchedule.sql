CREATE TABLE [dbo].[ReportSchedule]
(
[RPTGRIND] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTCFGWIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RPTGRNMS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Business_Desk_Report_Typ] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Publish_Frequency] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[NMBROFDYS] [smallint] NOT NULL,
[DailyFrequencyOptions] [smallint] NOT NULL,
[WeeklyFrequencyOptions] [smallint] NOT NULL,
[MonthlyFrequencyOptions] [smallint] NOT NULL,
[ScheduledDaysOfTheWeek_1] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_2] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_3] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_4] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_5] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_6] [tinyint] NOT NULL,
[ScheduledDaysOfTheWeek_7] [tinyint] NOT NULL,
[ScheduledDayOfTheWeek] [smallint] NOT NULL,
[Scheduled_Week_Of_The_Mo] [smallint] NOT NULL,
[DAYOFMONTH] [smallint] NOT NULL,
[ScheduledMonthOfTheYear_1] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_2] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_3] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_4] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_5] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_6] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_7] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_8] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_9] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_10] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_11] [tinyint] NOT NULL,
[ScheduledMonthOfTheYear_12] [tinyint] NOT NULL,
[Number_Of_Weeks] [smallint] NOT NULL,
[Last_Date_Published] [datetime] NOT NULL,
[Last_Time_Published] [datetime] NOT NULL,
[Next_Day_To_Publish] [datetime] NOT NULL,
[Next_Time_To_Publish] [datetime] NOT NULL,
[GenerateReportScript] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OpenReportOptionWindowSc] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Keep_Prior_Versions] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__Last___0F38F91D] CHECK ((datepart(day,[Last_Time_Published])=(1) AND datepart(month,[Last_Time_Published])=(1) AND datepart(year,[Last_Time_Published])=(1900)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__Next___1121418F] CHECK ((datepart(day,[Next_Time_To_Publish])=(1) AND datepart(month,[Next_Time_To_Publish])=(1) AND datepart(year,[Next_Time_To_Publish])=(1900)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__STRTT__13098A01] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__Last___0E44D4E4] CHECK ((datepart(hour,[Last_Date_Published])=(0) AND datepart(minute,[Last_Date_Published])=(0) AND datepart(second,[Last_Date_Published])=(0) AND datepart(millisecond,[Last_Date_Published])=(0)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__Next___102D1D56] CHECK ((datepart(hour,[Next_Day_To_Publish])=(0) AND datepart(minute,[Next_Day_To_Publish])=(0) AND datepart(second,[Next_Day_To_Publish])=(0) AND datepart(millisecond,[Next_Day_To_Publish])=(0)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [CK__ReportSch__STRTD__121565C8] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[ReportSchedule] ADD CONSTRAINT [PKReportSchedule] PRIMARY KEY CLUSTERED  ([RPTGRIND], [RTPACHIN], [RTCFGWIN], [RTGRSBIN], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ReportSchedule] ON [dbo].[ReportSchedule] ([Business_Desk_Report_Nam], [RPTGRIND], [PRODID], [RPTGRNMS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ReportSchedule] ON [dbo].[ReportSchedule] ([Last_Date_Published], [Last_Time_Published], [Business_Desk_Report_Nam], [RPTGRNMS], [RPTGRIND], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5ReportSchedule] ON [dbo].[ReportSchedule] ([Next_Day_To_Publish], [Next_Time_To_Publish], [Business_Desk_Report_Nam], [RPTGRNMS], [RPTGRIND], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ReportSchedule] ON [dbo].[ReportSchedule] ([RPTGRNMS], [Business_Desk_Report_Nam], [RPTGRIND], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[RTCFGWIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ReportSchedule].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[RPTGRNMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[Business_Desk_Report_Typ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[Report_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[Publish_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[NMBROFDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[DailyFrequencyOptions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[WeeklyFrequencyOptions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[MonthlyFrequencyOptions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDaysOfTheWeek_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledDayOfTheWeek]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[Scheduled_Week_Of_The_Mo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[DAYOFMONTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[ScheduledMonthOfTheYear_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[Number_Of_Weeks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[Last_Date_Published]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[Last_Time_Published]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[Next_Day_To_Publish]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportSchedule].[Next_Time_To_Publish]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[GenerateReportScript]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSchedule].[OpenReportOptionWindowSc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSchedule].[Keep_Prior_Versions]'
GO
GRANT SELECT ON  [dbo].[ReportSchedule] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportSchedule] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportSchedule] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportSchedule] TO [DYNGRP]
GO
