SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCommitCMGLTransactions]  @iCMPMatchTable varchar(50),  @iGLPMatchTable varchar(50),  @iCMUMatchTable varchar(50),  @iGLUMatchTable varchar(50)  AS  DECLARE  @lSQLError int  if SYSTEM_USER = 'sa'  begin  TRUNCATE TABLE CM50507  TRUNCATE TABLE CM50508  TRUNCATE TABLE GL50507  TRUNCATE TABLE GL50508  end else  begin  DELETE FROM CM50507  DELETE FROM CM50508  DELETE FROM GL50507  DELETE FROM GL50508  end  EXEC(  'insert into CM50507  select POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED from '+@iCMPMatchTable+' ') EXEC(  'insert into CM50508  select POSTEDDT,CMTrxNum,TRXSORCE,DOCNUMBR,DOCTYPE,PAYMENT_AMOUNT,DepAmt,STRVAL,VOIDED from '+@iCMUMatchTable+' ') EXEC(  'insert into GL50507  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT,ACCTAMNT from '+@iGLPMatchTable+' ') EXEC(  'insert into GL50508  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT from '+@iGLUMatchTable+' ')  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glCommitCMGLTransactions] TO [DYNGRP]
GO
