SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[aagCheckAndUpdateROOT] (  @aaBudgetID INT  ,  @aaCodeSequence  INT  ,  @aaActualPriliminary INT  ,  @aaFiscalPeriod SMALLINT ,  @BalanceNew NUMERIC(19,5)  )  AS BEGIN  DECLARE @Level int  DECLARE @aaCode int  DECLARE @Diff NUMERIC(19,5)  DECLARE @BalanceOld NUMERIC(19,5)   SELECT  @aaCode = A.aaCodeSequence, @Level = A.aaLevel FROM AAG00902 A  INNER JOIN AAG00903 B ON A.aaBudgetTreeID = B.aaBudgetTreeID  WHERE aaTrxDimCodeID =   (SELECT aaTrxDimParCodeID FROM AAG00902 WHERE aaCodeSequence = @aaCodeSequence   AND aaBudgetTreeID = B.aaBudgetTreeID) AND  B.aaBudgetID = @aaBudgetID  IF @Level = 0   BEGIN  SELECT @BalanceOld = Balance FROM AAG00904 WHERE   aaBudgetID = @aaBudgetID AND  aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND  aaCodeSequence=@aaCodeSequence   SET @Diff = (@BalanceNew - @BalanceOld)  UPDATE AAG00904 SET Balance = Balance + @Diff   WHERE aaCodeSequence = @aaCode   AND  aaBudgetID = @aaBudgetID    AND  aaFiscalPeriod =@aaFiscalPeriod   SELECT * FROM AAG00904  WHERE aaCodeSequence = @aaCode   AND  aaBudgetID = @aaBudgetID    AND  aaFiscalPeriod =@aaFiscalPeriod   END END     
GO
GRANT EXECUTE ON  [dbo].[aagCheckAndUpdateROOT] TO [DYNGRP]
GO
