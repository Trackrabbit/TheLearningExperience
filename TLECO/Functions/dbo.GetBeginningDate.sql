SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetBeginningDate] (  @UserDate datetime,  @CalendarType varchar(10) = 'Fiscal',  @TimeUnit varchar(18) = 'Period',  @NumberOfPeriods int = 1 ) RETURNS datetime AS  BEGIN  DECLARE   @PeriodsTemp int,  @PeriodDate datetime,  @FiscalStartDate datetime,  @FiscalEndDate datetime,  @result datetime   SELECT @UserDate = dbo.GetDateStripTime(@UserDate)   IF @CalendarType = 'Fiscal'  BEGIN  IF @TimeUnit = 'Period'  BEGIN  SELECT @PeriodsTemp =   (SELECT DISTINCT   PERIODID   FROM   SY40100   WHERE   @UserDate BETWEEN PERIODDT AND PERDENDT AND   PERIODID <> 0 AND   FORIGIN = 1)  SELECT   @FiscalStartDate = FSTFSCDY,   @FiscalEndDate = LSTFSCDY   FROM   SY40101   WHERE   @UserDate BETWEEN FSTFSCDY AND LSTFSCDY   WHILE (@NumberOfPeriods - @PeriodsTemp) > 0  BEGIN  SELECT @NumberOfPeriods = @NumberOfPeriods - @PeriodsTemp  SELECT @FiscalStartDate = FSTFSCDY FROM SY40101 WHERE @UserDate BETWEEN FSTFSCDY AND LSTFSCDY  SELECT @PeriodsTemp = NUMOFPER FROM SY40101 WHERE LSTFSCDY = DATEADD(DAY, -1, @FiscalStartDate)  SELECT @FiscalStartDate = FSTFSCDY, @FiscalEndDate = LSTFSCDY FROM SY40101 WHERE LSTFSCDY = DATEADD(DAY, -1, @FiscalStartDate)  END   SELECT @result = (SELECT DISTINCT PERIODDT FROM SY40100 WHERE PERIODDT BETWEEN @FiscalStartDate AND @FiscalEndDate AND PERIODID = ((@PeriodsTemp - @NumberOfPeriods)+1) AND FORIGIN = 1)   END   ELSE IF @TimeUnit = 'Year'  SELECT @result = ISNULL(  (SELECT FSTFSCDY FROM SY40101  WHERE DATEADD(yy, -(@NumberOfPeriods - 1), @UserDate) BETWEEN FSTFSCDY AND LSTFSCDY),  dbo.GetDefaultMaxDate())   END   ELSE  BEGIN  IF @TimeUnit = 'Week'  SELECT @result = DATEADD(wk, -(@NumberOfPeriods-1),DATEADD(DAY, -1, DATEADD(wk, DATEDIFF(wk,0,@UserDate), 0)))   ELSE IF @TimeUnit = 'Month'  SELECT @result = DATEADD(M, -(@NumberOfPeriods-1), DATEADD(DAY, -DAY(@UserDate)+1, @UserDate))   ELSE IF @TimeUnit = 'Quarter'  BEGIN  SELECT @result = DATEADD(M, -((@NumberOfPeriods-1) * 3), @UserDate)  SELECT @result = CAST(YEAR(@result) AS varchar(4)) +  CASE WHEN MONTH(@result) IN ( 1,  2,  3) THEN '0101'  WHEN MONTH(@result) IN ( 4,  5,  6) THEN '0401'  WHEN MONTH(@result) IN ( 7,  8,  9) THEN '0701'  WHEN MONTH(@result) IN (10, 11, 12) THEN '1001'  END  END   ELSE IF @TimeUnit = 'Year'  SELECT @result = DATEADD(yy, -(@NumberOfPeriods-1), DATEADD(yy, DATEDIFF(yy,0,@UserDate), 0))  END   RETURN @result END   
GO
GRANT EXECUTE ON  [dbo].[GetBeginningDate] TO [DYNGRP]
GO