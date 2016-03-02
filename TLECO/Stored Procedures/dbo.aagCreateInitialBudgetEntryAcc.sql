SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreateInitialBudgetEntryAcc] AS  BEGIN  DECLARE @aaBudgetID INTEGER  DECLARE @aaCodeSequence INTEGER  DECLARE @aaActualPriliminary INTEGER  DECLARE @ACTINDX INTEGER  DECLARE @USERID CHAR(15)  DECLARE @WINTYPE INTEGER  DECLARE @CMPANYID INTEGER   SELECT @USERID  = SYSTEM_USER  SELECT @WINTYPE = 1   SELECT @CMPANYID = dbo.aagGetCompanyID()   SELECT @ACTINDX = ACTINDX,   @aaBudgetID = aaBudgetID,   @aaCodeSequence = aaCodeSequence,   @aaActualPriliminary = aaActualPriliminary   from AAG00906   WHERE USERID = @USERID AND   WINTYPE = @WINTYPE AND   CMPANYID = @CMPANYID  SET NOCOUNT ON  INSERT INTO AAG00905  SELECT @aaBudgetID AS aaBudgetID,  @aaCodeSequence AS aaCodeSequence,  @ACTINDX AS ACTINDX,  PERIODDT,   aaFiscalPeriod,  @aaActualPriliminary AS aaActualPriliminary,  0 AS aaRange,  0.00 AS Balance,  (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =AAG00904.PERIODDT),DATEADD(MONTH, 1, AAG00904.PERIODDT))) AS YEAR1   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary  = @aaActualPriliminary  SET NOCOUNT OFF END     
GO
GRANT EXECUTE ON  [dbo].[aagCreateInitialBudgetEntryAcc] TO [DYNGRP]
GO
