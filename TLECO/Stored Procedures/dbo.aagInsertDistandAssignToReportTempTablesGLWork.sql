SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE       procedure [dbo].[aagInsertDistandAssignToReportTempTablesGLWork]  @iHdrID int, @cDistTable char(30), @cAssignTable char(30)  as  begin  exec('insert into ' +  @cDistTable + '(aaGLWorkHdrID,aaGLWorkDistID, ACTINDX,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,USERID,TRXBTCHSRC,SERIES) select aaGLWorkHdrID,aaGLWorkDistID, ACTINDX,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,''aa'',''aa'',1   from AAG10001 where aaGLWorkHdrID = ' + @iHdrID)  end   begin  exec('insert into ' +  @cAssignTable + '(aaGLWorkHdrID,aaGLWorkDistID,aaGLWorkAssignID,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,USERID,TRXBTCHSRC) select aaGLWorkHdrID,aaGLWorkDistID,aaGLWorkAssignID,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,''aa'',''aa''   from AAG10002 where aaGLWorkHdrID = ' + @iHdrID +  ' and aaGLWorkDistID in(select aaGLWorkDistID from AAG10001   where aaGLWorkHdrID = ' + @iHdrID + ')' ) end    
GO
GRANT EXECUTE ON  [dbo].[aagInsertDistandAssignToReportTempTablesGLWork] TO [DYNGRP]
GO
