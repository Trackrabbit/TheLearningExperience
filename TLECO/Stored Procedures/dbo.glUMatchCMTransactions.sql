SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[glUMatchCMTransactions]   @iGLTempTable VARCHAR(50),   @iCMTempTable VARCHAR(50),   @iCMUMatchTable VARCHAR(50),   @iGLUMatchTable VARCHAR(50) AS  BEGIN  DECLARE  @lSQLError INT   EXEC('INSERT INTO ' +   @iCMUMatchTable +   ' SELECT  POSTEDDT, CMTrxNum, TRXSORCE, DOCNUMBR, DOCTYPE, PAYMENT_AMOUNT, DepAmt, '''' AS STRVAL, VOIDED,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppCMTransactionZoom(0,CMRECNUM)   FROM ' +  @iCMTempTable)    EXEC(  'INSERT INTO '  + @iGLUMatchTable +  ' SELECT  TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,   DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppAccountIndex(1,ACTINDX),   DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,JRNENTRY,RCTRXSEQ,YEAR1,TRXDATE)  FROM '  + @iGLTempTable)    EXEC(  'DELETE FROM ' + @iCMTempTable + ' WHERE ' + @iCMTempTable + '.TRXSORCE IN  (SELECT TRXSORCE FROM ' + @iCMUMatchTable + ')')    EXEC(  'DELETE FROM ' + @iGLTempTable + ' WHERE ' + @iGLTempTable + '.ORTRXSRC IN  (SELECT ORTRXSRC FROM ' + @iCMUMatchTable + ')')    RETURN (@lSQLError)  END   
GO
GRANT EXECUTE ON  [dbo].[glUMatchCMTransactions] TO [DYNGRP]
GO
