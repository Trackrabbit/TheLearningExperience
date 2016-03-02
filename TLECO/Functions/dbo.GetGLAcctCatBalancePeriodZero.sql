SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetGLAcctCatBalancePeriodZero]  (  @UserDate datetime,  @AcctCat int ) RETURNS  Numeric(19,5) AS BEGIN DECLARE @result numeric(19,5) DECLARE @CurrentYear int DECLARE @IsHist int   SELECT @UserDate = dbo.GetDateStripTime(@UserDate)  SELECT   DISTINCT @CurrentYear = YEAR1, @IsHist = HISTORYR FROM  SY40101 WHERE   @UserDate between FSTFSCDY and LSTFSCDY  IF @IsHist = 1 BEGIN  SELECT @result = (  SELECT sum(PERDBLNC)  FROM GL10111  WHERE   @AcctCat = ACCATNUM AND  PERIODID = 0 AND  YEAR1 = @CurrentYear) END  ELSE BEGIN  SELECT @result = (  SELECT sum(PERDBLNC)  FROM GL10110  WHERE   @AcctCat = ACCATNUM AND  PERIODID = 0 AND  YEAR1 = @CurrentYear) END  SELECT @result = ISNULL(@result * dbo.GetTypicalBalanceMultiplier(@AcctCat), 0)  RETURN @result END   
GO
GRANT EXECUTE ON  [dbo].[GetGLAcctCatBalancePeriodZero] TO [DYNGRP]
GO
