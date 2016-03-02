SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagValidateCodeSubLedHdr] @I_cTableAssign nvarchar(30) = null, @I_cTableCode nvarchar(30) = null, @I_cTableError nvarchar(30) = null, @I_nHdrID int, @O_fValidCode tinyint = 1 output, @I_UserID varchar(20), @I_Right int  as begin set nocount on  declare  @nDistID int,  @nDebitAmt numeric(19,5),  @nCreditAmt numeric(19,5),  @nActIndx int,  @nAcctClassID int,  @nErrorCount int,  @fValidCode tinyint,  @SERIES  int,  @dAcctDate datetime,   @dTransDate datetime,   @aaBrowseType smallint   set @fValidCode  = 1  set @O_fValidCode  = 1  set @SERIES  = 0  set @aaBrowseType  = 0   select @SERIES  = SERIES from AAG20000 where aaSubLedgerHdrID = @I_nHdrID  if @SERIES = 2   begin  if exists(select top 1 aaSubLedgerDistID from AAG20001 where aaSubLedgerHdrID = @I_nHdrID  and aaSubLedgerDistID = 1 and POSTED = 1)   begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,aaBrowseType,DEBITAMT,CRDTAMNT,ACTINDX,convert(datetime,convert(char(12),aaChangeDate,102)+ convert(char(12),aaChangeTime,108))  from AAG20001  where aaSubLedgerHdrID = @I_nHdrID and POSTED = 0 and aaBrowseType <> 0 and INTERID = DB_NAME()  end  else  begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,aaBrowseType,DEBITAMT,CRDTAMNT,ACTINDX,convert(datetime,convert(char(12),aaChangeDate,102)+ convert(char(12),aaChangeTime,108))  from AAG20001  where aaSubLedgerHdrID = @I_nHdrID  and POSTED = 0 and INTERID = DB_NAME()  end  end  else  begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,aaBrowseType,DEBITAMT,CRDTAMNT,ACTINDX,convert(datetime,convert(char(12),aaChangeDate,102)+ convert(char(12),aaChangeTime,108))  from AAG20001  where aaSubLedgerHdrID = @I_nHdrID  and POSTED = 0 and INTERID = DB_NAME()  end  open aaSubLedHdr  fetch next from aaSubLedHdr into @nDistID,@aaBrowseType,@nDebitAmt,@nCreditAmt,@nActIndx,@dTransDate  while @@fetch_status = 0  Begin  Set @fValidCode = 1  set @nAcctClassID = 0 select @nAcctClassID = aaAcctClassID,@dAcctDate = convert(datetime,convert(char(12),aaChangeDate,102)+ convert(char(12),aaChangeTime,108)) from AAG00200 where ACTINDX = @nActIndx  if @dAcctDate>@dTransDate  begin   Exec aagValidateCodeSubLedDist  1,  @I_cTableAssign,  @I_cTableCode,  @I_cTableError,  @I_nHdrID,  @nDistID,  @nDebitAmt,  @nCreditAmt,  @nAcctClassID,  @nActIndx,  1,  @fValidCode output,  @I_UserID,  @I_Right    If @fValidCode = 0   set @O_fValidCode = 0  else  if exists (select Top 1 aaTrxCodeID from AAG20001 a inner join AAG20003 d on   a.aaSubLedgerHdrID = d.aaSubLedgerHdrID AND   a.aaSubLedgerDistID = d.aaSubLedgerDistID AND  a.aaSubLedgerHdrID = @I_nHdrID  inner join AAG00202 c on d.aaTrxDimID = c.aaTrxDimID and  c.aaAcctClassID = @nAcctClassID   where a.ACTINDX = @nActIndx and   ((aaDataEntry = 2 and aaTrxCodeID = 0 ) or (aaDataEntry = 4 and (aaTrxCodeID = 0 or aaTrxCodeID <> aaTrxDimCodeIDDflt))))  set @aaBrowseType = 2  end  else set @fValidCode = 1  if @aaBrowseType < 2  set @aaBrowseType =dbo.aagGetPartialStatus(@I_nHdrID,@nDistID,@SERIES)  If @fValidCode = 1 and @aaBrowseType > 1   Begin  exec aagValidateCodeSubLedDist  2,  @I_cTableAssign,  @I_cTableCode,  @I_cTableError,  @I_nHdrID,  @nDistID,  @nDebitAmt,  @nCreditAmt,  @nAcctClassID,  @nActIndx,  1,  @fValidCode output,  @I_UserID,  @I_Right   If @fValidCode = 0  set @O_fValidCode = 0  end  Fetch next from aaSubLedHdr into @nDistID,@aaBrowseType,@nDebitAmt,@nCreditAmt, @nActIndx,@dTransDate  end   close aaSubLedHdr  deallocate aaSubLedHdr    exec aagUpdateSLDistForBrowseType  @I_cTableError,  @I_nHdrID,  1  exec aagUpdateSLDistForBrowseType  @I_cTableError,  @I_nHdrID,  0 set nocount off  return end    
GO
GRANT EXECUTE ON  [dbo].[aagValidateCodeSubLedHdr] TO [DYNGRP]
GO