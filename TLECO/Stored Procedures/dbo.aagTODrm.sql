SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagTODrm]  @SqlSessionID int as begin  set nocount on  declare @aagGetHdrID int,  @Status int,   @CMPANYID     int,  @DOCTYPE int,  @DOCNUMBR char(21)  select  @CMPANYID = CMPANYID from DYNAMICS.dbo.SY01500 where INTERID = DB_NAME()   exec DYNAMICS..aagGetNextID 20000, @CMPANYID, @aagGetHdrID out, @Status  declare CRM cursor fast_forward for  select RMDTYPAL,DOCNUMBR  from RM00401  open CRM  fetch next from CRM into @DOCTYPE,@DOCNUMBR  while @@fetch_status = 0  begin  insert into AAG20000  (aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,Master_ID,aaHdrErrors)  values(dbo.aagGetNextHdrID(20000),3,@DOCTYPE,@DOCNUMBR,' ',0)   fetch next from CRM into @DOCTYPE,@DOCNUMBR  end  close CRM  deallocate CRM  update DYNAMICS..AAG00102 set aaRowID = dbo.aagGetNextHdrID(20000) - 1  where aaTableID = 20000 and CMPANYID = @CMPANYID   insert into AAG20001  (aaSubLedgerHdrID,   aaSubLedgerDistID,   INTERID, ACTINDX, DISTTYPE, aaBrowseType,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, SEQNUMBR,  GLPOSTDT, aaCustID, POSTED ,RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT,aaChangeDate,aaChangeTime,ACCTTYPE)   select dbo.aagGetHdrID(3,RM10101.RMDTYPAL,RM10101.DOCNUMBR,' ',0,0, getdate(),0,' ',20000),  RM10101.DEX_ROW_ID,  DB_NAME(), RM10101.DSTINDX, RM10101.DISTTYPE, 0,  RM10101.DEBITAMT, RM10101.CRDTAMNT, RM10101.ORDBTAMT, RM10101.ORCRDAMT, isnull(RM10101.CURNCYID,' '), isnull(MC020102.CURRNIDX,0), RM10101.SEQNUMBR as SEQNUMBR,  RM10101.POSTEDDT, '', RM10101.POSTED, isnull(MC020102.RATETPID,' '), isnull(MC020102.EXGTBLID,' '), isnull(MC020102.XCHGRATE,0), isnull(MC020102.EXCHDATE,'1999-03-06 00:00:00.000'), isnull(MC020102.TIME1,0),  isnull(MC020102.RTCLCMTD,0), isnull(MC020102.DENXRATE,0), isnull(MC020102.MCTRXSTT,0),  convert(char(12), getdate(), 102),convert(char(12), getdate(), 108),dbo.aagGetAccountType(RM10101.DSTINDX)  from MC020102 RIGHT OUTER JOIN  RM10101 ON MC020102.RMDTYPAL = RM10101.RMDTYPAL AND MC020102.DOCNUMBR = RM10101.DOCNUMBR  inner join AAG20000 on AAG20000.DOCTYPE = RM10101.RMDTYPAL and AAG20000.DOCNUMBR = RM10101.DOCNUMBR  and AAG20000.SERIES = 3  union all  select dbo.aagGetHdrID(3,RM30301.RMDTYPAL,RM30301.DOCNUMBR,' ',0,0, getdate(),0,'',20000),  RM30301.DEX_ROW_ID,  DB_NAME(), RM30301.DSTINDX, RM30301.DISTTYPE, 0,  RM30301.DEBITAMT, RM30301.CRDTAMNT, RM30301.ORDBTAMT, RM30301.ORCRDAMT, isnull(RM30301.CURNCYID,' '), isnull(MC020102.CURRNIDX,0), RM30301.SEQNUMBR as SEQNUMBR,  RM30301.POSTEDDT, '', 1, isnull(MC020102.RATETPID,' '), isnull(MC020102.EXGTBLID,' '), isnull(MC020102.XCHGRATE,0), isnull(MC020102.EXCHDATE,'1999-03-06 00:00:00.000'), isnull(MC020102.TIME1,0),  isnull(MC020102.RTCLCMTD,0), isnull(MC020102.DENXRATE,0), isnull(MC020102.MCTRXSTT,0),  convert(char(12), getdate(), 102),convert(char(12), getdate(), 108),dbo.aagGetAccountType(RM30301.DSTINDX)  from MC020102 RIGHT OUTER JOIN  RM30301 ON MC020102.RMDTYPAL = RM30301.RMDTYPAL AND MC020102.DOCNUMBR = RM30301.DOCNUMBR  Update AAG20001 SET aaSubLedgerDistID=0-aaSubLedgerDistID  where aaSubLedgerHdrID not in (select distinct aaSubLedgerHdrID from AAG20002)  UPDATE AAG20001   SET aaSubLedgerDistID = (SELECT COUNT(1) FROM AAG20001 AA WHERE AAG20001.DEX_ROW_ID >= AA.DEX_ROW_ID AND AA.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID )  where AAG20001.aaSubLedgerHdrID not in (select distinct aaSubLedgerHdrID from AAG20002)   insert into AAG20002   (aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,DEBITAMT,  CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,DistRef,NOTEINDX,aaAssignErrors)  select aaSubLedgerHdrID,aaSubLedgerDistID,1,DEBITAMT,  CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,' ',0,0 from AAG20001 where aaSubLedgerHdrID in  (select aaSubLedgerHdrID from AAG20000 where SERIES = 3)   set nocount off end     
GO
GRANT EXECUTE ON  [dbo].[aagTODrm] TO [DYNGRP]
GO
