SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[aaPortfolio_Debitmemo]      @CompId as int,  @Doc_numbr as char(20) output  AS  DECLARE   @Ingreso_Num as char(21),   @aaSubLedgerHdrID as int,  @aaSubLedgerDistID as int,  @SERIES as char(5),  @DOCTYPE as char(5),  @ACTINDX as int,  @POSTED as int,  @DEBITAMT2 as numeric(19,5),  @CRDTAMNT2 as numeric(19,5),  @ORDBTAMT2 as numeric(19,5),  @ORCRDAMT2 as numeric(19,5),  @aaSubLedgerAssignID as int,  @DexRowIdRMOpen as int,  @DSTINDX as int,  @DOCNUMBR as char(21),  @aaAcctClassID as int,  @aaTrxDimID as int,  @aaTrxDimCodeIDDflt as int,  @MaxaaSubLedgerHdrID as int,  @DISTTYPE as smallint,  @DEBITAMT as numeric(19,5),  @CRDTAMNT as numeric(19,5),  @ORDBTAMT as numeric(19,5),  @ORCRDAMT as numeric(19,5),  @CURNCYID as char(15),  @CURRNIDX as int,  @aaNewSubLedgerDistID as int,  @ACCTTYPE as smallint,  @SEQNUMBR as int, @oStatus smallint, @noteindx as numeric(19,5)   BEGIN  set @aaNewSubLedgerDistID = 0  select @DexRowIdRMOpen = max(DEX_ROW_ID) from RM20101  exec DYNAMICS..aagGetNextID 20000, @CompId, @MaxaaSubLedgerHdrID out, @oStatus out    DECLARE AAG20000_Cursor CURSOR FOR   Select DOCNUMBR from RM20101 where DEX_ROW_ID = @DexRowIdRMOpen  OPEN AAG20000_Cursor   FETCH NEXT FROM AAG20000_Cursor INTO @DOCNUMBR  WHILE @@FETCH_STATUS = 0   BEGIN   Insert into [AAG20000] values (@MaxaaSubLedgerHdrID ,3,3,@DOCNUMBR,'',0,0)    DECLARE AAG20001_Cursor CURSOR FOR   Select DSTINDX,DISTTYPE,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX,SEQNUMBR  from RM10101 where DOCNUMBR = @DOCNUMBR  OPEN AAG20001_Cursor   FETCH NEXT FROM AAG20001_Cursor INTO @DSTINDX,@DISTTYPE,@DEBITAMT,@CRDTAMNT,@ORDBTAMT,@ORCRDAMT,@CURNCYID,@CURRNIDX,@SEQNUMBR  WHILE @@FETCH_STATUS = 0   BEGIN   select @ACCTTYPE = ACCTTYPE from GL00100 where ACTINDX = @DSTINDX   set @aaNewSubLedgerDistID=@aaNewSubLedgerDistID + 1  INSERT INTO [dbo].[AAG20001]([aaSubLedgerHdrID],[aaSubLedgerDistID]   ,[INTERID] ,[CorrespondingUnit],[ACTINDX] ,[DISTTYPE],[ACCTTYPE],[aaBrowseType]   ,[DECPLACS],[DEBITAMT],[CRDTAMNT],[ORDBTAMT],[ORCRDAMT],[CURNCYID]   ,[CURRNIDX],[RATETPID],[EXGTBLID],[XCHGRATE],[EXCHDATE],[TIME1]   ,[RTCLCMTD],[DENXRATE],[MCTRXSTT],[SEQNUMBR],[GLPOSTDT],[aaCustID]   ,[aaVendID],[aaSiteID],[aaItemID],[aaCopyStatus],[aaWinWasOpen],[POSTED]   ,[HISTORY],[aaDistErrors],[APTVCHNM],[APTODCTY],[aaFutureDist],[aaOffsetAcct]   ,[ITEMNMBR],[TRXLOCTN] ,[BINNMBR],[TRNSTLOC],[TRXQTY]   ,[aaChangeDate]   ,[aaChangeTime])   VALUES (@MaxaaSubLedgerHdrID,@aaNewSubLedgerDistID,'','',@DSTINDX,@DISTTYPE,@ACCTTYPE,1,2,@DEBITAMT,@CRDTAMNT,@ORDBTAMT,@ORCRDAMT,  @CURNCYID,@CURRNIDX,'','',0,'','',0,0,0,@SEQNUMBR,'','','','','',0,0,1,0,0,'',0,0,0,'','','','',0,'','')  select @noteindx = isnull(max(NOTEINDX),0) + 1 from AAG20002   INSERT INTO [dbo].[AAG20002]([aaSubLedgerHdrID],[aaSubLedgerDistID],[aaSubLedgerAssignID]   ,[DEBITAMT],[CRDTAMNT],[ORDBTAMT],[ORCRDAMT]   ,[aaAssignedPercent],[DistRef],[NOTEINDX],[aaAssignErrors])   VALUES (@MaxaaSubLedgerHdrID,@aaNewSubLedgerDistID,1,@DEBITAMT,@CRDTAMNT,@ORDBTAMT,@ORCRDAMT   ,10000,'',@noteindx,0)    DECLARE AAG20002_Cursor CURSOR FOR   Select aaAcctClassID  from AAG00200 where ACTINDX = @DSTINDX  OPEN AAG20002_Cursor   FETCH NEXT FROM AAG20002_Cursor INTO @aaAcctClassID  WHILE @@FETCH_STATUS = 0   BEGIN  DECLARE AAG00202_Cursor CURSOR FOR   Select aaTrxDimID,aaTrxDimCodeIDDflt  from AAG00202 where aaAcctClassID = @aaAcctClassID  OPEN AAG00202_Cursor   FETCH NEXT FROM AAG00202_Cursor INTO @aaTrxDimID,@aaTrxDimCodeIDDflt  WHILE @@FETCH_STATUS = 0   BEGIN   INSERT INTO [dbo].[AAG20003]   ([aaSubLedgerHdrID],[aaSubLedgerDistID],[aaSubLedgerAssignID]   ,[aaTrxDimID],[aaTrxCodeID],[aaCodeErrors])   VALUES (@MaxaaSubLedgerHdrID,@aaNewSubLedgerDistID,1,@aaTrxDimID,@aaTrxDimCodeIDDflt,0)  FETCH NEXT FROM AAG00202_Cursor INTO @aaTrxDimID,@aaTrxDimCodeIDDflt  END  CLOSE AAG00202_Cursor   DEALLOCATE AAG00202_Cursor   FETCH NEXT FROM AAG20002_Cursor INTO @aaAcctClassID  END  CLOSE AAG20002_Cursor   DEALLOCATE AAG20002_Cursor    FETCH NEXT FROM AAG20001_Cursor INTO @DSTINDX,@DISTTYPE,@DEBITAMT,@CRDTAMNT,@ORDBTAMT,@ORCRDAMT,@CURNCYID,@CURRNIDX,@SEQNUMBR  END  CLOSE AAG20001_Cursor   DEALLOCATE AAG20001_Cursor    FETCH NEXT FROM AAG20000_Cursor INTO @DOCNUMBR  END  CLOSE AAG20000_Cursor   DEALLOCATE AAG20000_Cursor  set @Doc_numbr = @DOCNUMBR END    
GO
GRANT EXECUTE ON  [dbo].[aaPortfolio_Debitmemo] TO [DYNGRP]
GO
