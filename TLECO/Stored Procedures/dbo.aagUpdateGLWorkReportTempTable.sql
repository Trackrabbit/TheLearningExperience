SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create        procedure [dbo].[aagUpdateGLWorkReportTempTable] @USERID  nvarchar(15), @aaHdr nvarchar(30), @aaDist nvarchar(30), @aaAssing nvarchar(30)  as  begin  declare @JRNENTRY  int,  @RCTRXSEQ  numeric(19,5),  @TRXDATE  datetime,  @aaGLWorkHdrID  int,  @isint int   select  @JRNENTRY  = 0,  @RCTRXSEQ  = 0,  @aaGLWorkHdrID  = 0,  @isint   = 0   exec ('insert into ' + @aaHdr + '(USERID, TRXBTCHSRC, aaGLWorkHdrID,   JRNENTRY, SERIES, GLPOSTDT)   select USERID, TRXBTCHSRC, aaGLWorkHdrID,   JRNENTRY, SERIES, GLPOSTDT  from AAG60000   where USERID =  '+''''+ @USERID+'''')   exec ('insert into ' + @aaDist +' (USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID,  aaGLWorkDistID, ACTINDX,DEBITAMT,CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID,  CURRNIDX)   Select USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID,  aaGLWorkDistID, ACTINDX,DEBITAMT,CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID,  CURRNIDX   from AAG60001 where USERID =  '+''''+ @USERID+'''')   exec ('insert into '+ @aaAssing + '(USERID, TRXBTCHSRC, aaGLWorkHdrID,   aaGLWorkDistID, aaGLWorkAssignID, DEBITAMT,  CRDTAMNT, ORDBTAMT,  ORCRDAMT, DistRef )  select USERID, TRXBTCHSRC, aaGLWorkHdrID,   aaGLWorkDistID, aaGLWorkAssignID, DEBITAMT,  CRDTAMNT, ORDBTAMT,  ORCRDAMT, DistRef from AAG60002 where USERID =  '+''''+ @USERID+'''') end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateGLWorkReportTempTable] TO [DYNGRP]
GO
