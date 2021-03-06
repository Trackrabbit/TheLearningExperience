SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glGetIVTransactions]  @iStartDate datetime,  @iEndDate datetime,  @iIVTempTable varchar(50)  AS  DECLARE  @lSQLError int  exec ('truncate table ' +@iIVTempTable +'')  EXEC(  'INSERT INTO ' +  @iIVTempTable +  ' (POSTEDDT,  TRXSORCE,  STRVAL,  TRX_ID,  DOCNUMBR,  DOCTYPE,  EXTDCOST,  JRNENTRY,  ACTINDX,  ITEMNMBR,  DCSTATUS,  HSTMODUL,  SEQNUMBR)  SELECT  SEE30303.GLPOSTDT,  SEE30303.TRXSORCE,  '''',  '''',  SEE30303.DOCNUMBR,  SEE30303.DOCTYPE,  (SUM(SEE30303.DEBITAMT) - SUM(SEE30303.CRDTAMNT)),  SEE30303.JRNENTRY,  SEE30303.IVIVINDX,  SEE30303.ITEMNMBR,  3,  SEE30303.HSTMODUL,  sum(SEE30303.SEQNUMBR)  FROM  SEE30303  WHERE  SEE30303.GLPOSTDT BETWEEN ' + '''' + @iStartDate + '''' + ' AND ' + '''' + @iEndDate + '''' +  ' GROUP BY  SEE30303.GLPOSTDT,  SEE30303.TRXSORCE,  SEE30303.DOCNUMBR,  SEE30303.DOCTYPE,  SEE30303.JRNENTRY,  SEE30303.IVIVINDX,  SEE30303.ITEMNMBR,  SEE30303.HSTMODUL ')  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glGetIVTransactions] TO [DYNGRP]
GO
