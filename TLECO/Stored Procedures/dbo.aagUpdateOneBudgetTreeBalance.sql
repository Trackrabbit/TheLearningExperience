SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagUpdateOneBudgetTreeBalance]  (  @aaBudgetID    INTEGER  ,  @aaCodeSequence   INTEGER  ,   @aaFiscalPeriod   INTEGER ,  @PeriodDate DATETIME,  @aaActualPriliminary  INTEGER  ,  @Balance     NUMERIC(19,5) ,  @aaAmountQty INTEGER ) AS  SET NOCOUNT ON IF @aaAmountQty = 0 BEGIN  UPDATE AAG00904   SET Balance = @Balance   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND  PERIODDT = @PeriodDate AND   aaFiscalPeriod = @aaFiscalPeriod AND   aaActualPriliminary = @aaActualPriliminary END ELSE BEGIN  UPDATE AAG00904   SET QUANTITY = @Balance   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND  PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod AND   aaActualPriliminary = @aaActualPriliminary END SET NOCOUNT OFF    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateOneBudgetTreeBalance] TO [DYNGRP]
GO
