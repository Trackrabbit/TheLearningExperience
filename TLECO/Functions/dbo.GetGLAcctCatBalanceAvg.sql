SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetGLAcctCatBalanceAvg]  (  @UserDate datetime,  @TimeUnit varchar(10) = 'Period',  @AcctCat int ) RETURNS  Numeric(19,5) AS BEGIN  DECLARE @startDate datetime DECLARE @startBalance Numeric(19,5) DECLARE @currBalance Numeric(19,5) DECLARE @result Numeric(19,5) DECLARE @CurrentType int DECLARE @periodID int DECLARE @periodBalances TABLE (  bal Numeric(19,5) )  SET @CurrentType = 1  SELECT @UserDate = dbo.GetDateStripTime(@UserDate)  IF @TimeUnit = 'Period' BEGIN  SELECT DISTINCT   @periodID = PERIODID   FROM   SY40100   WHERE   @UserDate BETWEEN PERIODDT and PERDENDT and   FORIGIN = 1   IF @periodID = 1  BEGIN  SELECT @startBalance = dbo.GetGLAcctCatBalancePeriodZero(@UserDate, @AcctCat)  END   ELSE  BEGIN  SELECT @startDate = dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1)  SELECT @startDate = DATEADD(dd, -1, @startDate)  SELECT @startBalance = dbo.GetGLAcctCatBalanceYTD(@startDate, @AcctCat)  END  SELECT @currBalance = dbo.GetGLAcctCatBalanceYTD(@UserDate, @AcctCat)  SELECT @result = (@startBalance + @currBalance) / 2 END  ELSE IF @TimeUnit = 'Year' BEGIN  INSERT INTO @periodBalances   SELECT dbo.GetGLAcctCatBalanceAvg(EndDate, 'Period', @AcctCat)  FROM (SELECT EndDate FROM GetKPIDetailDates(@UserDate, 'Fiscal') WHERE CurrPrevType = @CurrentType) sub  SELECT @result = ISNULL((SELECT sum(bal) / count(bal) FROM @periodBalances), 0) END  RETURN @result END   
GO
GRANT EXECUTE ON  [dbo].[GetGLAcctCatBalanceAvg] TO [DYNGRP]
GO
