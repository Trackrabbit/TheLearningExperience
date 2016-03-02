SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create       procedure [dbo].[aagUpdateReportTableForInquiry]  @iHdrID  int,  @cDistTable char(30),  @cAssignTable char(30),  @VoideFlag int,  @I_Max int as begin  declare @Series   int,  @QStr nvarchar(50),  @aaSubLedgerDistID  int,  @Cnt int  select  @Series   = 0,  @aaSubLedgerDistID = 0,  @Cnt   = 0  Select @Series = SERIES from AAG20000 where aaSubLedgerHdrID = @iHdrID  if @Series <> 2  begin  set @VoideFlag = 2  set @QStr = space(1)  end  else if @I_Max = 1  begin  set @VoideFlag = 2  set @QStr = space(1)  end  else if @VoideFlag = 1  begin  set @QStr = ' and aaSubLedgerDistID >= ' + str(@I_Max)  end  else if @VoideFlag = 0 and @I_Max > 1  begin  set @QStr = ' and aaSubLedgerDistID < ' + str(@I_Max)  end   exec('insert into ' +  @cDistTable + '(aaSubLedgerHdrID,aaSubLedgerDistID, ACTINDX,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,POSTED,USERID,TRXBTCHSRC,SERIES)  select aaSubLedgerHdrID,aaSubLedgerDistID, ACTINDX,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX,POSTED ,''aa'',''aa'',1  from AAG20001 where aaSubLedgerHdrID = ' + @iHdrID + @QStr + ' and INTERID = DB_NAME()')  end   begin   exec('insert into ' +  @cAssignTable + '(aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  DistRef,USERID,TRXBTCHSRC)  select aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,CAST((aaSubLedgerDistID-(SELECT MIN(aaSubLedgerDistID) FROM AAG20002 where aaSubLedgerHdrID = ' + @iHdrID +   ' and aaSubLedgerDistID in(select aaSubLedgerDistID from AAG20001   where aaSubLedgerHdrID = ' + @iHdrID + @QStr +' and INTERID = DB_NAME()))+1) AS VARCHAR(10)),''aa'',''aa''   from AAG20002 where aaSubLedgerHdrID = ' + @iHdrID +  ' and aaSubLedgerDistID in(select aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = ' + @iHdrID + @QStr +' and INTERID = DB_NAME())' )  if @Series = 2 and @VoideFlag = 1  begin  exec ('update ' +@cDistTable + ' set aaSubLedgerDistID  = (aaSubLedgerDistID * (-1))')  exec ('update ' +@cAssignTable + ' set aaSubLedgerDistID  = (aaSubLedgerDistID * (-1))')  exec ('declare C1 cursor fast_forward for  Select aaSubLedgerDistID from ' + @cDistTable + ' where aaSubLedgerDistID < 0  order by aaSubLedgerDistID desc')  open C1  fetch next from C1 into @aaSubLedgerDistID  while @@fetch_status = 0  begin  set @Cnt = @Cnt  + 1  exec ('Update '+ @cDistTable + 'set aaSubLedgerDistID = ' + @Cnt +  ' where aaSubLedgerHdrID = ' + @iHdrID + ' and aaSubLedgerDistID = ' + @aaSubLedgerDistID)  exec ('Update '+ @cAssignTable + 'set aaSubLedgerDistID = ' + @Cnt +  ' where aaSubLedgerHdrID = ' + @iHdrID + ' and aaSubLedgerDistID = ' + @aaSubLedgerDistID)  fetch next from C1 into @aaSubLedgerDistID   end  close C1  deallocate C1   end  end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateReportTableForInquiry] TO [DYNGRP]
GO