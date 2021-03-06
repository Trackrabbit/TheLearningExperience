SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportScheduleSS_3] (@RPTGRNMS char(21), @Business_Desk_Report_Nam char(51), @RPTGRIND smallint, @PRODID smallint) AS  set nocount on SELECT TOP 1  RPTGRIND, PRODID, RTPACHIN, RTCFGWIN, RTGRSBIN, RPTGRNMS, Business_Desk_Report_Nam, Business_Desk_Report_Typ, Report_URL, Publish_Frequency, STRTDATE, STRTTIME, NMBROFDYS, DailyFrequencyOptions, WeeklyFrequencyOptions, MonthlyFrequencyOptions, ScheduledDaysOfTheWeek_1, ScheduledDaysOfTheWeek_2, ScheduledDaysOfTheWeek_3, ScheduledDaysOfTheWeek_4, ScheduledDaysOfTheWeek_5, ScheduledDaysOfTheWeek_6, ScheduledDaysOfTheWeek_7, ScheduledDayOfTheWeek, Scheduled_Week_Of_The_Mo, DAYOFMONTH, ScheduledMonthOfTheYear_1, ScheduledMonthOfTheYear_2, ScheduledMonthOfTheYear_3, ScheduledMonthOfTheYear_4, ScheduledMonthOfTheYear_5, ScheduledMonthOfTheYear_6, ScheduledMonthOfTheYear_7, ScheduledMonthOfTheYear_8, ScheduledMonthOfTheYear_9, ScheduledMonthOfTheYear_10, ScheduledMonthOfTheYear_11, ScheduledMonthOfTheYear_12, Number_Of_Weeks, Last_Date_Published, Last_Time_Published, Next_Day_To_Publish, Next_Time_To_Publish, GenerateReportScript, OpenReportOptionWindowSc, Keep_Prior_Versions, DEX_ROW_ID FROM .ReportSchedule WHERE RPTGRNMS = @RPTGRNMS AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRIND = @RPTGRIND AND PRODID = @PRODID ORDER BY RPTGRNMS ASC, Business_Desk_Report_Nam ASC, RPTGRIND ASC, PRODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportScheduleSS_3] TO [DYNGRP]
GO
