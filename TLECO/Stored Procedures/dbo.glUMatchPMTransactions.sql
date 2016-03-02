SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glUMatchPMTransactions]  @iGLTempTable varchar(50),  @iPMTempTable varchar(50),  @iPMUMatchTable varchar(50),  @iGLUMatchTable varchar(50) AS  DECLARE  @lSQLError int  EXEC('INSERT INTO ' +   @iPMUMatchTable +   ' SELECT  PSTGDATE,  VENDORID,  TRXSORCE,  VCHRNMBR,  DOCNUMBR,  STRVAL,  TRX_ID,  ACCTAMNT,  CNTRLTYP,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppVendorID(1,VENDORID),  case '+@iPMTempTable + '.HISTRX  when 1 then  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppPayablesTransactionNumber(1, DOCTYPE,VCHRNMBR,3,1,-1,'''','''')  else  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppPayablesTransactionNumber(1, DOCTYPE,VCHRNMBR,2,1,-1,'''','''')  end  FROM ' +  @iPMTempTable)  EXEC(  'INSERT INTO '  + @iGLUMatchTable +  ' SELECT  TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppAccountIndex(1,ACTINDX),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,JRNENTRY,RCTRXSEQ,YEAR1,TRXDATE)  FROM '  + @iGLTempTable)  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glUMatchPMTransactions] TO [DYNGRP]
GO
