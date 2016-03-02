SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCommitIVGLTransactions]  @iIVPMatchTable varchar(50),  @iGLPMatchTable varchar(50),  @iIVUMatchTable varchar(50),  @iGLUMatchTable varchar(50)  AS  DECLARE  @lSQLError int  if SYSTEM_USER = 'sa'  begin  TRUNCATE TABLE IV50501  TRUNCATE TABLE IV50502  TRUNCATE TABLE GL50501  TRUNCATE TABLE GL50502  end else  begin  DELETE FROM IV50501  DELETE FROM IV50502  DELETE FROM GL50501  DELETE FROM GL50502  end  EXEC(  'insert into IV50501  select POSTEDDT,JRNENTRY,DOCNUMBR,DOCTYPE,TRXSORCE,ORTRXSRC,STRVAL,TRX_ID,EXTDCOST from '+@iIVPMatchTable+' ') EXEC(  'insert into IV50502  select POSTEDDT,JRNENTRY,DOCNUMBR,DOCTYPE,TRXSORCE,STRVAL,TRX_ID,EXTDCOST from '+@iIVUMatchTable+' ') EXEC(  'insert into GL50501  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT,ACCTAMNT from '+@iGLPMatchTable+' ') EXEC(  'insert into GL50502  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT from '+@iGLUMatchTable+' ')  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glCommitIVGLTransactions] TO [DYNGRP]
GO