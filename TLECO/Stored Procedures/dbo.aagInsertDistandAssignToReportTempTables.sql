SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagInsertDistandAssignToReportTempTables] @iHdrID int, @cDistTable char(30), @cAssignTable char(30), @iPosted int = 0 as  begin exec('insert into ' +  @cDistTable + '(aaSubLedgerHdrID,aaSubLedgerDistID, ACTINDX,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,POSTED,USERID,TRXBTCHSRC,SERIES) select aaSubLedgerHdrID,aaSubLedgerDistID, ACTINDX,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,POSTED ,''aa'',''aa'',1  from AAG20001 where aaSubLedgerHdrID = ' + @iHdrID + ' and POSTED = ' + @iPosted + ' and INTERID = DB_NAME()') end   begin  exec('insert into ' +  @cAssignTable + '(aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,USERID,TRXBTCHSRC) select aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,CAST((aaSubLedgerDistID-(SELECT MIN(aaSubLedgerDistID) FROM AAG20002 WHERE aaSubLedgerHdrID = ' + @iHdrID +   ' and aaSubLedgerDistID in(select aaSubLedgerDistID from AAG20001   where aaSubLedgerHdrID = ' + @iHdrID + ' and INTERID = DB_NAME()))+1) AS VARCHAR(10)),''aa'',''aa''   from AAG20002 where aaSubLedgerHdrID = ' + @iHdrID +  ' and aaSubLedgerDistID in(select aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = ' + @iHdrID + ' and INTERID = DB_NAME())' ) end    
GO
GRANT EXECUTE ON  [dbo].[aagInsertDistandAssignToReportTempTables] TO [DYNGRP]
GO
