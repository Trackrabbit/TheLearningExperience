SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagInsertDistandAssignToReportTempTablesGL]  @iHdrID int, @cDistTable char(30), @cAssignTable char(30)  as begin  begin   exec('insert into ' +  @cDistTable + '(aaGLHdrID,aaGLDistID, ACTINDX,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,USERID,TRXBTCHSRC,SERIES)  select aaGLHdrID,aaGLDistID, ACTINDX,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,''aa'',''aa'',1   from AAG30001 where aaGLHdrID = ' + @iHdrID)   end    begin   exec('insert into ' +  @cAssignTable + '(aaGLHdrID,aaGLDistID,aaGLAssignID,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,USERID,TRXBTCHSRC,SERIES)  select aaGLHdrID,aaGLDistID,aaGLAssignID,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,''aa'',''aa'' ,1  from AAG30002 where aaGLHdrID = ' + @iHdrID +  ' and aaGLDistID in(select aaGLDistID from AAG30001   where aaGLHdrID = ' + @iHdrID + ')' )  end end     
GO
GRANT EXECUTE ON  [dbo].[aagInsertDistandAssignToReportTempTablesGL] TO [DYNGRP]
GO
