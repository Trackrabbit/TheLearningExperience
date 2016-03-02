SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCommitRMGLTransactions]  @iRMPMatchTable varchar(50),  @iGLPMatchTable varchar(50),  @iRMUMatchTable varchar(50),  @iGLUMatchTable varchar(50)  AS  DECLARE  @lSQLError int  if SYSTEM_USER = 'sa'  begin  TRUNCATE TABLE RM50505  TRUNCATE TABLE RM50506  TRUNCATE TABLE GL50505  TRUNCATE TABLE GL50506  end else  begin  DELETE FROM RM50505  DELETE FROM RM50506  DELETE FROM GL50505  DELETE FROM GL50506  end  EXEC(  'insert into RM50505  select POSTEDDT,CUSTNMBR,TRXSORCE,ORTRXSRC,DOCNUMBR,STRVAL,TRX_ID,ACCTAMNT,RMDTYPAL from '+@iRMPMatchTable+' ') EXEC(  'insert into RM50506  select POSTEDDT,CUSTNMBR,TRXSORCE,DOCNUMBR,STRVAL,TRX_ID,ACCTAMNT,RMDTYPAL from '+@iRMUMatchTable+' ') EXEC(  'insert into GL50505  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT,ACCTAMNT from '+@iGLPMatchTable+' ') EXEC(  'insert into GL50506  select TRXDATE,JRNENTRY,ORTRXSRC,ORCTRNUM,ACTINDX,DEBITAMT,CRDTAMNT from '+@iGLUMatchTable+' ')  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glCommitRMGLTransactions] TO [DYNGRP]
GO
