SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glGetGLTransactionsOpen]  @iAccountIndex int,  @iStartDate datetime,  @iEndDate datetime,  @iGLTempTable varchar(50)  AS  DECLARE  @lSQLError int  EXEC (  'INSERT INTO ' +   @iGLTempTable +  ' (TRXDATE,  JRNENTRY,  RCTRXSEQ,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  HISTRX,  YEAR1)  SELECT  TRXDATE,  JRNENTRY,  RCTRXSEQ,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  SUM(DEBITAMT),  SUM(CRDTAMNT),  0,  OPENYEAR  FROM  GL20000  WHERE  ACTINDX = ' + @iAccountIndex + '  AND  SOURCDOC <> ''BBF''  AND  VOIDED = 0  AND  TRXDATE BETWEEN ' + '''' + @iStartDate + '''' + ' AND ' + '''' + @iEndDate + '''' + '  GROUP BY   TRXDATE, JRNENTRY, RCTRXSEQ, ORTRXSRC, ORCTRNUM, ACTINDX, OPENYEAR' )  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glGetGLTransactionsOpen] TO [DYNGRP]
GO
