SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE    FUNCTION [dbo].[aagValidatePeriodBudgetAmount] ( @aaFiscalPeriod SMALLINT, @aaParCodeSeq INTEGER ,  @Type INTEGER,  @PeriodDate DATETIME )  RETURNS INT AS BEGIN DECLARE @Result  INT , @USERID CHAR(15), @WINTYPE SMALLINT,  @CMPANYID INTEGER  SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID()  IF @Type = 1  BEGIN SELECT @Result = dbo.aagValidatePeriodBudgetAmount_Parent(@aaFiscalPeriod,@aaParCodeSeq, @PeriodDate)  END ELSE BEGIN SELECT @Result = dbo.aagValidatePeriodBudgetAmount_Children(@aaFiscalPeriod, @PeriodDate)  END  RETURN @Result END    
GO
GRANT EXECUTE ON  [dbo].[aagValidatePeriodBudgetAmount] TO [DYNGRP]
GO
