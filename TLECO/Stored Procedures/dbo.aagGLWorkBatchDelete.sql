SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create   procedure [dbo].[aagGLWorkBatchDelete] @BACHNUMB char(15) as begin  set nocount on  declare @JRNENTRY int,  @RCTRXSEQ numeric(19,5),  @TRXDATE datetime,  @aaGLWorkHdrID int,  @aaIsint int  select  @JRNENTRY = 0 ,  @RCTRXSEQ = 0,  @aaGLWorkHdrID = 0,  @aaIsint = 0  declare JEN cursor fast_forward for  Select JRNENTRY, RCTRXSEQ, TRXDATE  from GL10000 where  BACHNUMB = @BACHNUMB  open JEN  fetch next from JEN into @JRNENTRY, @RCTRXSEQ, @TRXDATE  while @@fetch_status = 0  begin  exec aagIsInitialiseGLWork @JRNENTRY, @RCTRXSEQ, @TRXDATE, @aaGLWorkHdrID output, @aaIsint  exec aagGLWorkDistDelete @aaGLWorkHdrID , 0, 2  fetch next from JEN into @JRNENTRY, @RCTRXSEQ, @TRXDATE  end  close JEN  deallocate JEN  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagGLWorkBatchDelete] TO [DYNGRP]
GO
