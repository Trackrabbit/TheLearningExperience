SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glUMatchRMTransactions]  @iGLTempTable varchar(50),  @iRMTempTable varchar(50),  @iRMUMatchTable varchar(50),  @iGLUMatchTable varchar(50)  AS  DECLARE  @lSQLError int  EXEC( 'INSERT INTO ' +  @iRMUMatchTable +   ' (POSTEDDT,  CUSTNMBR,  TRXSORCE,  DOCNUMBR,  STRVAL,  ACCTAMNT,  TRX_ID,  RMDTYPAL,  CustomerNumberDrillback,  DocumentNumberDrillback)  SELECT  POSTEDDT,  CUSTNMBR,  TRXSORCE,  DOCNUMBR,  STRVAL,  ACCTAMNT,  TRX_ID,  RMDTYPAL,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppCustomerID(1,CUSTNMBR),  case HISTRX   when 1 then  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppReceivablesTransactionNumber(1,RMDTYPAL,CUSTNMBR,DOCNUMBR,3,TRXSORCE,'''',1,-1 )  else  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppReceivablesTransactionNumber(1,RMDTYPAL,CUSTNMBR,DOCNUMBR,2,TRXSORCE,'''',1,-1 )  end  FROM '  + @iRMTempTable)  EXEC(  'INSERT INTO ' +  @iGLUMatchTable +  ' (TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  AccountNumberDrillback,  JournalEntryDrillback)  SELECT  TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppAccountIndex(1,ACTINDX),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,JRNENTRY,RCTRXSEQ,YEAR1,TRXDATE)  FROM '  + @iGLTempTable)  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glUMatchRMTransactions] TO [DYNGRP]
GO
