SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create  procedure [dbo].[aagUpdateReportTable]  @BCHSOURC  char(51),  @BACHNUMB   char(51),  @POSTED smallint as begin  set nocount on  declare @SERIES smallint,  @DOCTYPE smallint,  @DOCNUMBR char(21),  @Master_ID char(31),  @aaSubLedgerHdrID int,  @USERID char(15)   set @SERIES = 11  set @USERID = system_user   declare CRPT  cursor fast_forward for  select SOPTYPE, SOPNUMBE from SOP10100   where BCHSOURC = @BCHSOURC and BACHNUMB = @BACHNUMB  open CRPT  fetch next from CRPT into @DOCTYPE,@DOCNUMBR   while @@fetch_status = 0  begin  if @DOCTYPE in (3,4)  begin  select @aaSubLedgerHdrID = aaSubLedgerHdrID  from AAG20000  where SERIES = @SERIES and  DOCTYPE = @DOCTYPE and   DOCNUMBR = @DOCNUMBR   if @aaSubLedgerHdrID is not null  begin  delete from AAG50000 where USERID = @USERID  and TRXBTCHSRC = @BCHSOURC  and SERIES = @SERIES   and aaSubLedgerHdrID = @aaSubLedgerHdrID   insert into AAG50000  (USERID,TRXBTCHSRC,aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,  aaOrder)  values(@USERID,@BCHSOURC,@aaSubLedgerHdrID,@SERIES,  @DOCTYPE,@DOCNUMBR,1)   exec aagInsertDistandAssignToReportTables  @USERID,  @BCHSOURC,  @SERIES,  @aaSubLedgerHdrID,  @POSTED,  0  end  end   fetch next from CRPT into @DOCTYPE,@DOCNUMBR  end  close CRPT   deallocate CRPT  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateReportTable] TO [DYNGRP]
GO
