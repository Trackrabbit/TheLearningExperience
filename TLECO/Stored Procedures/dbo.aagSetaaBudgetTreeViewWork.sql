SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE       PROCEDURE [dbo].[aagSetaaBudgetTreeViewWork] (  @USERID CHAR(15),  @WINTYPE SMALLINT,  @CMPANYID INTEGER ,  @aaBudgetID INT ,  @aaCodeSequence INT ,  @aaNodeCode INT ,  @ACTINDX INT ,  @aaActualPriliminary INT ,  @NETCHNG TINYINT ,  @YEAR1 SMALLINT,  @aaRange SMALLINT,  @aaAmtQty SMALLINT,  @STR30 CHAR(31),  @ReportingLedgerNames varchar(50)  ) AS BEGIN  SET NOCOUNT ON  DELETE FROM AAG00906 WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND   CMPANYID = @CMPANYID  INSERT INTO AAG00906   (  USERID   ,   WINTYPE   ,  CMPANYID  ,  aaBudgetID  ,  aaCodeSequence  ,  aaNodeCode  ,  ACTINDX   ,  aaActualPriliminary ,  NETCHNG   ,  AAG00906.YEAR1   ,  aaRange   ,  aaAmtQty  ,  STR30 ,  ReportingLedgerNames  )  SELECT   @USERID   ,   @WINTYPE  ,   @CMPANYID  ,  @aaBudgetID  ,   @aaCodeSequence  ,   @aaNodeCode         ,  @ACTINDX  ,  @aaActualPriliminary ,   @NETCHNG  ,  @YEAR1   ,  @aaRange  ,  @aaAmtQty  ,  @STR30  ,  @ReportingLedgerNames  SET NOCOUNT OFF END    
GO
GRANT EXECUTE ON  [dbo].[aagSetaaBudgetTreeViewWork] TO [DYNGRP]
GO
