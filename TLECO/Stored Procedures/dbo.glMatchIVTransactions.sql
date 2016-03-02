SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glMatchIVTransactions]  @iGLTempTable varchar(50),  @iIVTempTable varchar(50),  @iIVMatchTable varchar(50),  @iGLMatchTable varchar(50),  @iIVPMatchTable varchar(50),  @iGLPMatchTable varchar(50)  AS  DECLARE  @lSQLError int  EXEC(  'SELECT  A.POSTEDDT,  A.TRXSORCE,  A.STRVAL,  A.TRX_ID,  A.DOCNUMBR,  A.DOCTYPE,  A.EXTDCOST,  A.JRNENTRY,  A.ACTINDX,  A.ITEMNMBR,  A.DCSTATUS,  B.HISTRX,  B.RCTRXSEQ,  B.YEAR1,  B.TRXDATE,  B.ORTRXSRC  INTO  ##IVDetailTemp  FROM ' +  @iIVTempTable + ' as A JOIN ' + @iGLTempTable + ' as B   ON A.TRXSORCE = B.ORTRXSRC  AND A.JRNENTRY = B.JRNENTRY   AND A.DOCNUMBR = B.ORCTRNUM  GROUP BY  A.POSTEDDT,  A.TRXSORCE,  A.STRVAL,  A.TRX_ID,  A.DOCNUMBR,  A.DOCTYPE,  A.EXTDCOST,  A.JRNENTRY,  A.ACTINDX,  A.ITEMNMBR,  A.DCSTATUS,  B.HISTRX,  B.RCTRXSEQ,  B.YEAR1,  B.TRXDATE,  B.ORTRXSRC ')  EXEC(  'SELECT  B.TRXDATE,  B.JRNENTRY,  B.ORTRXSRC,  B.ORCTRNUM,  B.ACTINDX,  B.DEBITAMT,  B.CRDTAMNT,  (B.DEBITAMT - B.CRDTAMNT) as EXTDCOST,  B.HISTRX,  B.YEAR1,  B.RCTRXSEQ  INTO  ##GLDetailTemp  FROM ' +  @iGLTempTable + ' as B JOIN ' + @iIVTempTable + ' as A  ON B.JRNENTRY = A.JRNENTRY  AND B.ORTRXSRC = A.TRXSORCE  AND B.ORCTRNUM = A.DOCNUMBR  GROUP BY  B.TRXDATE,  B.JRNENTRY,  B.ORTRXSRC,  B.ORCTRNUM,   B.ACTINDX,  B.DEBITAMT,  B.CRDTAMNT,  B.HISTRX,  B.YEAR1,  B.RCTRXSEQ ')  EXEC(  'INSERT INTO   ##IVDetailTemp  SELECT  A.POSTEDDT,  A.TRXSORCE,  A.STRVAL,  A.TRX_ID,  A.DOCNUMBR,  A.DOCTYPE,  A.EXTDCOST,  A.JRNENTRY,  A.ACTINDX,  A.ITEMNMBR,  A.DCSTATUS,  B.HISTRX,  B.RCTRXSEQ,  B.YEAR1,  B.TRXDATE,  B.ORTRXSRC  FROM ' +  @iIVTempTable + ' as A JOIN ' + @iGLTempTable + ' as B  ON A.TRXSORCE = B.ORTRXSRC  AND A.JRNENTRY = B.JRNENTRY   AND B.ORCTRNUM = ''''   GROUP BY  A.POSTEDDT,  A.TRXSORCE,  A.STRVAL,  A.TRX_ID,  A.DOCNUMBR,  A.DOCTYPE,  A.EXTDCOST,  A.JRNENTRY,  A.ACTINDX,  A.ITEMNMBR,  A.DCSTATUS,  B.HISTRX,  B.RCTRXSEQ,  B.YEAR1,  B.TRXDATE,  B.ORTRXSRC  ')  EXEC(  'INSERT INTO  ##GLDetailTemp  SELECT  B.TRXDATE,  B.JRNENTRY,  B.ORTRXSRC,  B.ORCTRNUM,  B.ACTINDX,  B.DEBITAMT,  B.CRDTAMNT,  (B.DEBITAMT - B.CRDTAMNT) as EXTDCOST,  B.HISTRX,  B.YEAR1,  B.RCTRXSEQ  FROM ' +  @iGLTempTable + ' as B JOIN ' + @iIVTempTable + ' as A  ON B.JRNENTRY = A.JRNENTRY  AND B.ORTRXSRC = A.TRXSORCE  AND B.ORCTRNUM = ''''  GROUP BY  B.TRXDATE,  B.JRNENTRY,  B.ORTRXSRC,  B.ORCTRNUM,   B.ACTINDX,  B.DEBITAMT,  B.CRDTAMNT,  B.HISTRX,  B.YEAR1,  B.RCTRXSEQ ')  SELECT  TRXSORCE,JRNENTRY,POSTEDDT,  SUM(EXTDCOST) AS EXTDCOST  INTO  #IVSumTemp FROM  ##IVDetailTemp GROUP BY  TRXSORCE,JRNENTRY,POSTEDDT   SELECT  ORTRXSRC,JRNENTRY,TRXDATE,  (SUM(DEBITAMT) - SUM(CRDTAMNT)) AS GLAMNT INTO  #GLSumTemp FROM  ##GLDetailTemp GROUP BY  ORTRXSRC,JRNENTRY,TRXDATE  SELECT  TRXSORCE, a.JRNENTRY INTO  #TRXRemoveTemp FROM  #IVSumTemp a JOIN #GLSumTemp b  ON  a.TRXSORCE = b.ORTRXSRC and a.JRNENTRY=b.JRNENTRY  AND  ((a.EXTDCOST <> b.GLAMNT) or (a.POSTEDDT <> b.TRXDATE))  SELECT  a.TRXSORCE,a.JRNENTRY,a.POSTEDDT,a.EXTDCOST INTO  #IVPMatchTemp FROM  #IVSumTemp a JOIN #GLSumTemp b  ON  a.TRXSORCE = b.ORTRXSRC and a.JRNENTRY=b.JRNENTRY  AND  ((a.EXTDCOST <> b.GLAMNT) or (a.POSTEDDT <> b.TRXDATE))  SELECT  a.ORTRXSRC,a.JRNENTRY,a.TRXDATE,a.GLAMNT INTO   #GLPMatchTemp FROM  #GLSumTemp a JOIN #TRXRemoveTemp b  ON  a.ORTRXSRC = b.TRXSORCE and  a.JRNENTRY=b.JRNENTRY  DELETE  #IVSumTemp FROM  #IVSumTemp a JOIN #GLSumTemp b  ON  a.TRXSORCE = b.ORTRXSRC and a.JRNENTRY=b.JRNENTRY  AND  ((a.EXTDCOST <> b.GLAMNT) or (a.POSTEDDT <> b.TRXDATE))  DELETE  #GLSumTemp FROM  #GLSumTemp a JOIN #TRXRemoveTemp b  ON  a.ORTRXSRC = b.TRXSORCE and  a.JRNENTRY=b.JRNENTRY  EXEC(  'INSERT INTO ' +  @iIVMatchTable +  ' (POSTEDDT,  JRNENTRY,  DOCNUMBR,  DOCTYPE,  TRXSORCE,  STRVAL,  TRX_ID,  EXTDCOST,  DocumentNumberDrillback,  JournalEntryDrillback)  SELECT  #IVSumTemp.POSTEDDT,  #IVSumTemp.JRNENTRY,  DOCNUMBR,  DOCTYPE,  ##IVDetailTemp.TRXSORCE,  STRVAL,  TRX_ID,  ##IVDetailTemp.EXTDCOST,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppItemTransactionNumber(1,##IVDetailTemp.ITEMNMBR,##IVDetailTemp.DOCTYPE,##IVDetailTemp.DOCNUMBR,##IVDetailTemp.DCSTATUS),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,##IVDetailTemp.JRNENTRY,##IVDetailTemp.RCTRXSEQ,##IVDetailTemp.YEAR1,##IVDetailTemp.TRXDATE)   FROM  ##IVDetailTemp join #IVSumTemp  ON ##IVDetailTemp.TRXSORCE=#IVSumTemp.TRXSORCE   AND ##IVDetailTemp.JRNENTRY=#IVSumTemp.JRNENTRY ')  EXEC(  'INSERT INTO ' +  @iGLMatchTable +  ' (TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  AccountNumberDrillback,  JournalEntryDrillback)  SELECT  #GLSumTemp.TRXDATE,  #GLSumTemp.JRNENTRY,  ##GLDetailTemp.ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppAccountIndex(1,ACTINDX),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,#GLSumTemp.JRNENTRY,##GLDetailTemp.RCTRXSEQ,##GLDetailTemp.YEAR1,#GLSumTemp.TRXDATE)  FROM  ##GLDetailTemp join #GLSumTemp  on ##GLDetailTemp.ORTRXSRC=#GLSumTemp.ORTRXSRC   AND ##GLDetailTemp.JRNENTRY=#GLSumTemp.JRNENTRY ')  EXEC(  'DELETE   FROM ' + @iIVTempTable +   ' WHERE EXISTS (select 1 from ' + @iIVMatchTable +   ' where TRXSORCE = ' + @iIVTempTable + '.TRXSORCE ' +  ' AND DOCNUMBR = ' + @iIVTempTable + '.DOCNUMBR ' +  ' AND JRNENTRY = ' + @iIVTempTable + '.JRNENTRY '+  ' AND POSTEDDT = ' + @iIVTempTable + '.POSTEDDT '+  ' AND EXTDCOST = ' + @iIVTempTable + '.EXTDCOST) ')  EXEC(   'DELETE   FROM ' + @iGLTempTable +   ' WHERE EXISTS (select 1 from ' + @iGLMatchTable +   ' where ORTRXSRC = ' + @iGLTempTable + '.ORTRXSRC ' +  ' AND JRNENTRY = ' + @iGLTempTable + '.JRNENTRY ' +  ' AND ORCTRNUM = ' + @iGLTempTable + '.ORCTRNUM ' +  ' AND TRXDATE = ' + @iGLTempTable + '.TRXDATE ' +  ' AND (DEBITAMT-CRDTAMNT) = ('+@iGLTempTable+'.DEBITAMT-'+@iGLTempTable+'.CRDTAMNT)) ')  EXEC(  'INSERT INTO ' +  @iIVPMatchTable +  ' (POSTEDDT,  JRNENTRY,  DOCNUMBR,  DOCTYPE,  TRXSORCE,  ORTRXSRC,  STRVAL,  TRX_ID,  EXTDCOST,  DocumentNumberDrillback,  JournalEntryDrillback)  SELECT  #IVPMatchTemp.POSTEDDT,  #IVPMatchTemp.JRNENTRY,  DOCNUMBR,  DOCTYPE,  ##IVDetailTemp.TRXSORCE,  ##IVDetailTemp.ORTRXSRC,  STRVAL,  TRX_ID,  ##IVDetailTemp.EXTDCOST,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppItemTransactionNumber(1,##IVDetailTemp.ITEMNMBR,##IVDetailTemp.DOCTYPE,  ##IVDetailTemp.DOCNUMBR,##IVDetailTemp.DCSTATUS),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,##IVDetailTemp.JRNENTRY,##IVDetailTemp.RCTRXSEQ,##IVDetailTemp.YEAR1,##IVDetailTemp.TRXDATE)   FROM  ##IVDetailTemp join #IVPMatchTemp  ON ##IVDetailTemp.TRXSORCE=#IVPMatchTemp.TRXSORCE   AND ##IVDetailTemp.JRNENTRY=#IVPMatchTemp.JRNENTRY ')  EXEC(  'INSERT INTO ' +  @iGLPMatchTable +  ' (TRXDATE,  JRNENTRY,  ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  ACCTAMNT,  AccountNumberDrillback,  JournalEntryDrillback)  SELECT  #GLPMatchTemp.TRXDATE,  #GLPMatchTemp.JRNENTRY,  ##GLDetailTemp.ORTRXSRC,  ORCTRNUM,  ACTINDX,  DEBITAMT,  CRDTAMNT,  EXTDCOST,  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppAccountIndex(1,ACTINDX),  DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)   + dbo.dgppJournalInquiry(1,#GLPMatchTemp.JRNENTRY,##GLDetailTemp.RCTRXSEQ,##GLDetailTemp.YEAR1,#GLPMatchTemp.TRXDATE)  FROM  ##GLDetailTemp join #GLPMatchTemp  on ##GLDetailTemp.ORTRXSRC=#GLPMatchTemp.ORTRXSRC   AND ##GLDetailTemp.JRNENTRY=#GLPMatchTemp.JRNENTRY ')  EXEC(  'DELETE   FROM ' + @iIVTempTable +   ' WHERE EXISTS (select 1 from ' + @iIVPMatchTable +   ' where TRXSORCE = ' + @iIVTempTable + '.TRXSORCE ' +  ' AND DOCNUMBR = ' + @iIVTempTable + '.DOCNUMBR ' +  ' AND JRNENTRY = ' + @iIVTempTable + '.JRNENTRY) ')  EXEC(   'DELETE   FROM ' + @iGLTempTable +   ' WHERE EXISTS (select 1 from ' + @iGLPMatchTable +   ' where ORTRXSRC = ' + @iGLTempTable + '.ORTRXSRC ' +  ' AND JRNENTRY = ' + @iGLTempTable + '.JRNENTRY ' +  ' AND ORCTRNUM = ' + @iGLTempTable + '.ORCTRNUM) ')  DROP TABLE  ##IVDetailTemp,  ##GLDetailTemp  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glMatchIVTransactions] TO [DYNGRP]
GO