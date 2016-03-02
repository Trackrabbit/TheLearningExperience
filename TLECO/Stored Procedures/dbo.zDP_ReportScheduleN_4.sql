SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportScheduleN_4] (@BS int, @Last_Date_Published datetime, @Last_Time_Published datetime, @Business_Desk_Report_Nam char(51), @RPTGRNMS char(21), @RPTGRIND smallint, @PRODID smallint, @Last_Date_Published_RS datetime, @Last_Time_Published_RS datetime, @Business_Desk_Report_Nam_RS char(51), @RPTGRNMS_RS char(21), @RPTGRIND_RS smallint, @PRODID_RS smallint, @Last_Date_Published_RE datetime, @Last_Time_Published_RE datetime, @Business_Desk_Report_Nam_RE char(51), @RPTGRNMS_RE char(21), @RPTGRIND_RE smallint, @PRODID_RE smallint) AS  set nocount on IF @Last_Date_Published_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, PRODID, RTPACHIN, RTCFGWIN, RTGRSBIN, RPTGRNMS, Business_Desk_Report_Nam, Business_Desk_Report_Typ, Report_URL, Publish_Frequency, STRTDATE, STRTTIME, NMBROFDYS, DailyFrequencyOptions, WeeklyFrequencyOptions, MonthlyFrequencyOptions, ScheduledDaysOfTheWeek_1, ScheduledDaysOfTheWeek_2, ScheduledDaysOfTheWeek_3, ScheduledDaysOfTheWeek_4, ScheduledDaysOfTheWeek_5, ScheduledDaysOfTheWeek_6, ScheduledDaysOfTheWeek_7, ScheduledDayOfTheWeek, Scheduled_Week_Of_The_Mo, DAYOFMONTH, ScheduledMonthOfTheYear_1, ScheduledMonthOfTheYear_2, ScheduledMonthOfTheYear_3, ScheduledMonthOfTheYear_4, ScheduledMonthOfTheYear_5, ScheduledMonthOfTheYear_6, ScheduledMonthOfTheYear_7, ScheduledMonthOfTheYear_8, ScheduledMonthOfTheYear_9, ScheduledMonthOfTheYear_10, ScheduledMonthOfTheYear_11, ScheduledMonthOfTheYear_12, Number_Of_Weeks, Last_Date_Published, Last_Time_Published, Next_Day_To_Publish, Next_Time_To_Publish, GenerateReportScript, OpenReportOptionWindowSc, Keep_Prior_Versions, DEX_ROW_ID FROM .ReportSchedule WHERE ( Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND = @RPTGRIND AND PRODID > @PRODID OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND > @RPTGRIND OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published > @Last_Time_Published OR Last_Date_Published > @Last_Date_Published ) ORDER BY Last_Date_Published ASC, Last_Time_Published ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, RPTGRIND ASC, PRODID ASC END ELSE IF @Last_Date_Published_RS = @Last_Date_Published_RE BEGIN SELECT TOP 25  RPTGRIND, PRODID, RTPACHIN, RTCFGWIN, RTGRSBIN, RPTGRNMS, Business_Desk_Report_Nam, Business_Desk_Report_Typ, Report_URL, Publish_Frequency, STRTDATE, STRTTIME, NMBROFDYS, DailyFrequencyOptions, WeeklyFrequencyOptions, MonthlyFrequencyOptions, ScheduledDaysOfTheWeek_1, ScheduledDaysOfTheWeek_2, ScheduledDaysOfTheWeek_3, ScheduledDaysOfTheWeek_4, ScheduledDaysOfTheWeek_5, ScheduledDaysOfTheWeek_6, ScheduledDaysOfTheWeek_7, ScheduledDayOfTheWeek, Scheduled_Week_Of_The_Mo, DAYOFMONTH, ScheduledMonthOfTheYear_1, ScheduledMonthOfTheYear_2, ScheduledMonthOfTheYear_3, ScheduledMonthOfTheYear_4, ScheduledMonthOfTheYear_5, ScheduledMonthOfTheYear_6, ScheduledMonthOfTheYear_7, ScheduledMonthOfTheYear_8, ScheduledMonthOfTheYear_9, ScheduledMonthOfTheYear_10, ScheduledMonthOfTheYear_11, ScheduledMonthOfTheYear_12, Number_Of_Weeks, Last_Date_Published, Last_Time_Published, Next_Day_To_Publish, Next_Time_To_Publish, GenerateReportScript, OpenReportOptionWindowSc, Keep_Prior_Versions, DEX_ROW_ID FROM .ReportSchedule WHERE Last_Date_Published = @Last_Date_Published_RS AND Last_Time_Published BETWEEN @Last_Time_Published_RS AND @Last_Time_Published_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND RPTGRNMS BETWEEN @RPTGRNMS_RS AND @RPTGRNMS_RE AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND = @RPTGRIND AND PRODID > @PRODID OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND > @RPTGRIND OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published > @Last_Time_Published OR Last_Date_Published > @Last_Date_Published ) ORDER BY Last_Date_Published ASC, Last_Time_Published ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, RPTGRIND ASC, PRODID ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, PRODID, RTPACHIN, RTCFGWIN, RTGRSBIN, RPTGRNMS, Business_Desk_Report_Nam, Business_Desk_Report_Typ, Report_URL, Publish_Frequency, STRTDATE, STRTTIME, NMBROFDYS, DailyFrequencyOptions, WeeklyFrequencyOptions, MonthlyFrequencyOptions, ScheduledDaysOfTheWeek_1, ScheduledDaysOfTheWeek_2, ScheduledDaysOfTheWeek_3, ScheduledDaysOfTheWeek_4, ScheduledDaysOfTheWeek_5, ScheduledDaysOfTheWeek_6, ScheduledDaysOfTheWeek_7, ScheduledDayOfTheWeek, Scheduled_Week_Of_The_Mo, DAYOFMONTH, ScheduledMonthOfTheYear_1, ScheduledMonthOfTheYear_2, ScheduledMonthOfTheYear_3, ScheduledMonthOfTheYear_4, ScheduledMonthOfTheYear_5, ScheduledMonthOfTheYear_6, ScheduledMonthOfTheYear_7, ScheduledMonthOfTheYear_8, ScheduledMonthOfTheYear_9, ScheduledMonthOfTheYear_10, ScheduledMonthOfTheYear_11, ScheduledMonthOfTheYear_12, Number_Of_Weeks, Last_Date_Published, Last_Time_Published, Next_Day_To_Publish, Next_Time_To_Publish, GenerateReportScript, OpenReportOptionWindowSc, Keep_Prior_Versions, DEX_ROW_ID FROM .ReportSchedule WHERE Last_Date_Published BETWEEN @Last_Date_Published_RS AND @Last_Date_Published_RE AND Last_Time_Published BETWEEN @Last_Time_Published_RS AND @Last_Time_Published_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND RPTGRNMS BETWEEN @RPTGRNMS_RS AND @RPTGRNMS_RE AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND = @RPTGRIND AND PRODID > @PRODID OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND RPTGRIND > @RPTGRIND OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published = @Last_Time_Published AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR Last_Date_Published = @Last_Date_Published AND Last_Time_Published > @Last_Time_Published OR Last_Date_Published > @Last_Date_Published ) ORDER BY Last_Date_Published ASC, Last_Time_Published ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, RPTGRIND ASC, PRODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportScheduleN_4] TO [DYNGRP]
GO