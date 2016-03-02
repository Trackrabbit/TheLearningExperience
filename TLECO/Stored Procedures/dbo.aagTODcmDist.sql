SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     procedure [dbo].[aagTODcmDist]  @SqlSessionID int as begin   set nocount on   declare @CMPANYID int,  @HdrID int,  @CMTrxType int,  @CMTrxNum char(21),  @CHEKBKID char(15)   select  @CMPANYID = CMPANYID from DYNAMICS.dbo.SY01500 where INTERID = DB_NAME()   declare CCM cursor fast_forward for   SELECT CMTrxType,  CASE WHEN CMTrxType >= 2 AND CMTrxType <= 6 THEN cast(CMRECNUM as varchar(21)) ELSE cast(CMTrxNum as varchar(21)) END AS TrxNum,  CHEKBKID  FROM CM20200  WHERE CMRECNUM IN (SELECT DISTINCT CMDNUMWK FROM CM20400)   UNION  SELECT SRCDOCTYP,   CASE WHEN SRCDOCTYP >= 2 AND SRCDOCTYP <= 6 THEN cast(CMRECNUM as varchar(21)) ELSE cast(RCPTNMBR as varchar(21)) END AS TrxNum,  CHEKBKID  FROM CM20300  WHERE CMRECNUM IN (SELECT DISTINCT CMDNUMWK FROM CM20400)   ORDER BY TrxNum  for read only  open CCM   fetch next from CCM into @CMTrxType, @CMTrxNum, @CHEKBKID   while @@fetch_status = 0  begin  if not exists (select 1 from AAG20000 where DOCTYPE = @CMTrxType AND DOCNUMBR = @CMTrxNum AND SERIES = 2 AND Master_ID = CASE WHEN @CMTrxType >= 2 AND @CMTrxType <= 6 THEN '2' ELSE @CHEKBKID END)  insert into AAG20000  (aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,Master_ID,aaHdrErrors)  values(dbo.aagGetNextHdrID(20000),2,@CMTrxType,@CMTrxNum,CASE WHEN @CMTrxType >= 2 AND @CMTrxType <= 6 THEN '2' ELSE @CHEKBKID END ,0)   fetch next from CCM into @CMTrxType, @CMTrxNum, @CHEKBKID  end  close CCM  deallocate CCM   update DYNAMICS..AAG00102 set aaRowID = dbo.aagGetNextHdrID(20000) - 1  where aaTableID = 20000 and CMPANYID = @CMPANYID   insert into AAG20001  (aaSubLedgerHdrID,   aaSubLedgerDistID,   INTERID, ACTINDX, DISTTYPE, aaBrowseType,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, SEQNUMBR,  GLPOSTDT, aaCustID, POSTED ,RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT,aaChangeDate,aaChangeTime,ACCTTYPE)   select dbo.aagGetHdrID(2,CM20200.CMTrxType,  CASE WHEN CM20200.CMTrxType >= 2 AND CM20200.CMTrxType <= 6 THEN   cast(CM20200.CMRECNUM as varchar(21))   ELSE cast(CM20200.CMTrxNum as varchar(21)) END,   CASE WHEN CM20200.CMTrxType >= 2 AND CM20200.CMTrxType <= 6 THEN '2'   ELSE cast(CM20200.CHEKBKID as varchar(15)) END ,0,0, getdate(),0,' ',20000),  CM20400.DEX_ROW_ID,  DB_NAME(), ACTINDX, 0, 0,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, isnull(CURNCYID,' '), isnull(CURRNIDX,0), DSTSQNUM * 16384,  clearedate, '', 0, isnull(RATETPID,' '), isnull(EXGTBLID,' '), isnull(XCHGRATE,0), isnull(EXCHDATE,'1999-03-06 00:00:00.000'), isnull(TIME1,0),   isnull(RTCLCMTD,0), isnull(DENXRATE,0), isnull(MCTRXSTT,0),convert(char(12), getdate(), 102),convert(char(12), getdate(), 108),  dbo.aagGetAccountType(ACTINDX)  from CM20400,CM20200 where CM20200.CMRECNUM = CM20400.CMDNUMWK  insert into AAG20001  (aaSubLedgerHdrID,   aaSubLedgerDistID,   INTERID, ACTINDX, DISTTYPE, aaBrowseType,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, SEQNUMBR,  GLPOSTDT, aaCustID, POSTED ,RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT,aaChangeDate,aaChangeTime,ACCTTYPE)   select dbo.aagGetHdrID(2,CM20300.SRCDOCTYP,  CASE WHEN CM20300.SRCDOCTYP >= 2 AND CM20300.SRCDOCTYP <= 6 THEN   cast(CM20300.CMRECNUM as varchar(21))   ELSE cast(CM20300.RCPTNMBR as varchar(21)) END ,  CASE WHEN CM20300.SRCDOCTYP >= 2 AND CM20300.SRCDOCTYP <= 6 THEN '2'   ELSE cast(CM20300.CHEKBKID as varchar(15)) END ,0,0, getdate(),0,' ',20000),  CM20400.DEX_ROW_ID,  DB_NAME(), ACTINDX, 0, 0,   DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, isnull(CURNCYID,' '), isnull(CURRNIDX,0), DSTSQNUM * 16384,  EXPNDATE, '', 0, isnull(RATETPID,' '), isnull(EXGTBLID,' '), isnull(XCHGRATE,0), isnull(EXCHDATE,'1999-03-06 00:00:00.000'), isnull(TIME1,0),   isnull(RTCLCMTD,0), isnull(DENXRATE,0), isnull(MCTRXSTT,0),convert(char(12), getdate(), 102),convert(char(12), getdate(), 108),  dbo.aagGetAccountType(ACTINDX)  from CM20400,CM20300 where CM20300.CMRECNUM = CM20400.CMDNUMWK   Update AAG20001 SET aaSubLedgerDistID=0-aaSubLedgerDistID  where aaSubLedgerHdrID not in (select distinct aaSubLedgerHdrID from AAG20002)  UPDATE AAG20001   SET aaSubLedgerDistID = (SELECT COUNT(1) FROM AAG20001 AA WHERE AAG20001.DEX_ROW_ID >= AA.DEX_ROW_ID AND AA.aaSubLedgerHdrID = AAG20001.aaSubLedgerHdrID )  where AAG20001.aaSubLedgerHdrID not in (select distinct aaSubLedgerHdrID from AAG20002)    insert into AAG20002   (aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,DEBITAMT,  CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,DistRef,NOTEINDX,aaAssignErrors)  select aaSubLedgerHdrID,aaSubLedgerDistID,1,DEBITAMT,  CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,' ',0,0 from AAG20001 where aaSubLedgerHdrID in  (select aaSubLedgerHdrID from AAG20000 where SERIES = 2)    set nocount off  end    
GO
GRANT EXECUTE ON  [dbo].[aagTODcmDist] TO [DYNGRP]
GO
