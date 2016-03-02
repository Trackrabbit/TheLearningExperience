SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagUpdateOneBudgetTreeBalanceAccForRollup] (  @aaBudgetID   INT  ,  @aaCodeSequence  INT  ,   @aaFiscalPeriod  SMALLINT ,  @PeriodDate DATETIME,  @aaActualPriliminary  INT  ,  @Balance   NUMERIC(19,5) ,  @ACTINDX INT ) AS DECLARE @aaCodeSequenceRollUP INTEGER SET NOCOUNT ON  UPDATE AAG00905  SET Balance = @Balance  WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND PERIODDT = @PeriodDate AND aaFiscalPeriod = @aaFiscalPeriod AND  aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX   DECLARE CURUPDATE CURSOR FAST_FORWARD FOR SELECT aaCodeSequence FROM dbo.aagGetParentNodes(@aaBudgetID,@aaCodeSequence) OPEN CURUPDATE FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP WHILE @@FETCH_STATUS = 0 BEGIN  UPDATE AAG00905   SET Balance = Balance + @Balance   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequenceRollUP AND  PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod AND   aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX   FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP END CLOSE CURUPDATE DEALLOCATE CURUPDATE SET NOCOUNT OFF    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateOneBudgetTreeBalanceAccForRollup] TO [DYNGRP]
GO
