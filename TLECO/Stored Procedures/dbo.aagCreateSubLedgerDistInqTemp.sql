SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create          procedure [dbo].[aagCreateSubLedgerDistInqTemp]  @I_nHdrID int = 0,  @I_cTableDistTemp nvarchar(30) = null,  @VoideFlag int,  @I_Max int,  @I_DistID int as begin   declare @Series int,  @QStr nvarchar(500),  @TempTable VARCHAR(50),  @TempTableQuery VARCHAR(8000)    select  @Series = 0  select @TempTable = '##aaSubLedgerDistTemp'  + REPLACE(system_user,'''','') + db_name()  select @TempTableQuery = 'drop table [' + @TempTable + ']'   if exists(select name from tempdb..sysobjects where name = @TempTable and type = 'U')   exec (@TempTableQuery)   begin   Select @Series = SERIES from AAG20000 where aaSubLedgerHdrID = @I_nHdrID  if @Series <> 2   begin  set @VoideFlag = 2  set @QStr = space(1)  end   else if @I_Max = 1  begin  set @VoideFlag = 2  set @QStr = space(1)  end   else if @VoideFlag = 1   begin  set @QStr = ' and aaSubLedgerDistID >= ' + str(@I_DistID)  select @QStr = @QStr + ' and aaSubLedgerDistID <= ' + str(@I_Max)  end  else if @VoideFlag = 0 and @I_Max > 1  begin  set @QStr = ' and aaSubLedgerDistID < ' + str(@I_Max)  end  If @Series =3   set @QStr = @QStr + ' Order by DISTTYPE, SEQNUMBR'  exec('select [aaSubLedgerHdrID], [aaSubLedgerDistID], [INTERID], [CorrespondingUnit], [ACTINDX], [DISTTYPE], [ACCTTYPE], [aaBrowseType],   [DECPLACS], [DEBITAMT], [CRDTAMNT], [ORDBTAMT], [ORCRDAMT], [CURNCYID], [CURRNIDX], [RATETPID], [EXGTBLID], [XCHGRATE], [EXCHDATE],   [TIME1], [RTCLCMTD], [DENXRATE], [MCTRXSTT], [SEQNUMBR], [GLPOSTDT], [aaCustID], [aaVendID], [aaSiteID], [aaItemID], [aaCopyStatus],   [aaWinWasOpen], [POSTED], [HISTORY], [aaDistErrors], [APTVCHNM], [APTODCTY], [aaFutureDist], [aaOffsetAcct], [ITEMNMBR], [TRXLOCTN], [BINNMBR], [TRNSTLOC], [TRXQTY]  INTO ['+ @TempTable + '] from AAG20001 where aaSubLedgerHdrID = ' + @I_nHdrID + @QStr )   if @VoideFlag = 1  begin  set @QStr = space(1)  set @QStr = rtrim(ltrim(str(@I_DistID)))  exec('alter table ['+ @TempTable + '] add aaDistplayDistID int IDENTITY(' + @QStr + ', 1)')   end  else  begin  exec('alter table ['+ @TempTable + '] add aaDistplayDistID int IDENTITY(1, 1)')  end  exec('truncate table ' + @I_cTableDistTemp)  exec('Insert into ' + @I_cTableDistTemp + ' select * from ['+ @TempTable + ']')   exec (@TempTableQuery)  return  end end     
GO
GRANT EXECUTE ON  [dbo].[aagCreateSubLedgerDistInqTemp] TO [DYNGRP]
GO
