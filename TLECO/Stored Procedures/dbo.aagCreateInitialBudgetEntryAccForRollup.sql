SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreateInitialBudgetEntryAccForRollup] ( @aaCodeSequence INT ) AS  BEGIN  DECLARE @aaBudgetID INTEGER  DECLARE @aaActualPriliminary INTEGER  DECLARE @ACTINDX INTEGER  DECLARE @USERID CHAR(15)  DECLARE @WINTYPE INTEGER  DECLARE @CMPANYID INTEGER    SELECT @USERID  = SYSTEM_USER  SELECT @WINTYPE = 1   SELECT @CMPANYID = dbo.aagGetCompanyID()   SELECT @ACTINDX = ACTINDX,   @aaBudgetID = aaBudgetID,   @aaActualPriliminary = aaActualPriliminary   from AAG00906   WHERE USERID = @USERID AND   WINTYPE = @WINTYPE AND   CMPANYID = @CMPANYID   SET NOCOUNT ON   INSERT INTO AAG00905  SELECT @aaBudgetID AS aaBudgetID,  @aaCodeSequence AS aaCodeSequence,  @ACTINDX AS ACTINDX,  PERIODDT,   aaFiscalPeriod,  @aaActualPriliminary AS aaActualPriliminary,  0 AS aaRange,  0.00 AS Balance,  AAG00904.YEAR1  FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary  = @aaActualPriliminary   SET NOCOUNT OFF END     
GO
GRANT EXECUTE ON  [dbo].[aagCreateInitialBudgetEntryAccForRollup] TO [DYNGRP]
GO
