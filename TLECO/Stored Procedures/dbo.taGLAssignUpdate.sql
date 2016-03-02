SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGLAssignUpdate]  @aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int output, @CompanyID  int, @ClassID int,  @SqlSessionID int, @Flag smallint  as begin  declare @NOTEINDX numeric(19,5)   declare @RequiredFieldEmpty tinyint  declare @PaymentVoucherNo varchar(50)  declare @OrgTrxNumber varchar(50), @SQLStmt varchar(2000)  Select   @NOTEINDX = 0, @SQLStmt = '', @OrgTrxNumber = '', @PaymentVoucherNo = ''   Select @aaGLWorkAssignID = isnull(max(aaGLWorkDistID),0) + 1   from AAG10002 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID = @aaGLWorkDistID and   @aaGLWorkAssignID > 0   exec DYNAMICS.dbo.smGetNextNoteIndex @CompanyID, @SqlSessionID, @NOTEINDX output   insert into AAG10002 ( aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID,DEBITAMT,  CRDTAMNT, ORDBTAMT, ORCRDAMT, aaAssignedPercent ,DistRef, NOTEINDX, aaAssignErrors)  Select  aaGLWorkHdrID, aaGLWorkDistID, @aaGLWorkAssignID, DEBITAMT,   CRDTAMNT, ORDBTAMT, ORCRDAMT,10000, '  ', @NOTEINDX,0 from AAG10001 where  aaGLWorkHdrID = @aaGLWorkHdrID and aaGLWorkDistID = @aaGLWorkDistID  if @Flag  <> 1  exec aagGLWorkCodeUpdate @aaGLWorkHdrID, @aaGLWorkDistID, @aaGLWorkAssignID, @ClassID,@RequiredFieldEmpty output  end    
GO
GRANT EXECUTE ON  [dbo].[taGLAssignUpdate] TO [DYNGRP]
GO
