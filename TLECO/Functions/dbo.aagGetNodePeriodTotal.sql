SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE    FUNCTION [dbo].[aagGetNodePeriodTotal] ( @PeriodDate DATETIME,  @aaFiscalPeriod INTEGER  ) RETURNS NUMERIC (19,5) AS BEGIN DECLARE @aaBudgetID INTEGER DECLARE @aaCodeSequence INTEGER DECLARE @aaActualPriliminary INTEGER DECLARE @aaAmtQty INTEGER DECLARE @Result NUMERIC (19,5)  DECLARE @USERID   CHAR(15)  DECLARE @WINTYPE INTEGER  DECLARE @CMPANYID INTEGER   SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID()  SELECT @aaBudgetID = aaBudgetID,  @aaCodeSequence = aaCodeSequence,  @aaActualPriliminary = aaActualPriliminary,  @aaAmtQty = aaAmtQty  FROM AAG00906  WHERE USERID = @USERID AND  WINTYPE = @WINTYPE  AND  CMPANYID = @CMPANYID   SELECT @Result = CASE WHEN @aaAmtQty = 0 THEN Balance ELSE QUANTITY END  FROM AAG00904  WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND  aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND PERIODDT = @PeriodDate  RETURN @Result  END    
GO
GRANT EXECUTE ON  [dbo].[aagGetNodePeriodTotal] TO [DYNGRP]
GO
