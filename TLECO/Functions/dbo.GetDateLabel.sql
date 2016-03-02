SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDateLabel] (  @UserDate datetime = NULL,  @CalendarType varchar(10) = 'Fiscal',  @TimeUnit varchar(10) = 'Period' ) RETURNS varchar(30) AS BEGIN  DECLARE @result varchar(30)  DECLARE @starting int  DECLARE @ending int  DECLARE @startingDt datetime  DECLARE @endingDt datetime   SELECT @UserDate = dbo.GetDateStripTime(@UserDate)   IF @CalendarType = 'Gregorian'  BEGIN  IF @TimeUnit = 'Week'  BEGIN  SELECT @result = convert(varchar(12), dateadd(day, -1, DATEADD(wk, DATEDIFF(wk, 0, @UserDate), 0)), 107)   END   ELSE IF @TimeUnit = 'Month'  BEGIN  SELECT @result = left(DATENAME(MM, @UserDate), 3)  END   ELSE IF @TimeUnit = 'Quarter'  BEGIN  SELECT @starting = (((month(@UserDate) - 1) / 3) * 3) + 1  SELECT @result = LEFT(DATENAME(MM, DateAdd(month, @starting, 0) - 1), 3)  SELECT @ending = @starting + 2  SELECT @result = @result + ' - ' + LEFT(DATENAME(MM, DateAdd(month, @ending, 0) - 1), 3)  END   ELSE IF @TimeUnit = 'Year'  BEGIN  SELECT @result = DATENAME(YY, @UserDate)  END  END   ELSE IF @CalendarType = 'Fiscal'  BEGIN   IF @TimeUnit = 'Period'  BEGIN  SELECT @result = ISNULL(  (SELECT DISTINCT   PERNAME   FROM   SY40100   WHERE   @UserDate between PERIODDT and PERDENDT AND  PERIODID <> 0 AND   FORIGIN = 1),   'N/A')  END   IF @TimeUnit = 'Year'  BEGIN  SELECT @result = ISNULL(  (SELECT   CAST(YEAR1 AS varchar(4))   FROM   SY40101   WHERE   @UserDate between FSTFSCDY and LSTFSCDY),   'N/A')  END  END   RETURN rtrim(@result) END   
GO
GRANT EXECUTE ON  [dbo].[GetDateLabel] TO [DYNGRP]
GO
