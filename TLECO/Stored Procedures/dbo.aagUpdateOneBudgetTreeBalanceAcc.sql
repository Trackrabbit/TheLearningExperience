SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagUpdateOneBudgetTreeBalanceAcc] (  @aaBudgetID   INT  ,  @aaCodeSequence  INT  ,   @aaFiscalPeriod  SMALLINT ,  @PeriodDate DATETIME,  @aaActualPriliminary  INT  ,  @Balance   NUMERIC(19,5) ,  @ACTINDX INT ) AS  SET NOCOUNT ON  UPDATE AAG00905  SET Balance = @Balance  WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND  PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod AND   aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX  SET NOCOUNT OFF    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateOneBudgetTreeBalanceAcc] TO [DYNGRP]
GO
