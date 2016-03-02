SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[aagSubAssignUpdate]  @aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int output, @CompanyID  int, @ClassID int,  @SqlSessionID int, @Flag smallint  with encryption as  set transaction isolation level read uncommitted set nocount on  begin  declare @NOTEINDX numeric(19,5)  Select   @NOTEINDX = 0   Select @aaSubLedgerAssignID = isnull(max(aaSubLedgerDistID),0) + 1   from AAG20002 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID = @aaSubLedgerDistID and   @aaSubLedgerAssignID > 0   exec DYNAMICS.dbo.smGetNextNoteIndex @CompanyID, @SqlSessionID, @NOTEINDX output   insert into AAG20002 ( aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,  DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,  DistRef,NOTEINDX,aaAssignErrors)  Select  aaSubLedgerHdrID,aaSubLedgerDistID,@aaSubLedgerAssignID,  DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,   '  ',@NOTEINDX,0 from AAG20001 where  aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @aaSubLedgerDistID  if @Flag  <> 1  exec aagSubWorkCodeUpdate @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID, @ClassID end    
GO
GRANT EXECUTE ON  [dbo].[aagSubAssignUpdate] TO [DYNGRP]
GO
