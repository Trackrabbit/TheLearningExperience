SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create          procedure [dbo].[aagCreateGLWorkDist]  @JRNENTRY    int,  @aaGLWorkHdrID int output,   @RCTRXSEQ int,   @GLPOSTDT Datetime,   @BalAmt numeric(19,5),  @CURNCYID char(15),  @CURRNIDX smallint,  @RATETPID char(15),  @EXGTBLID char(15),  @XCHGRATE numeric(19,7),  @EXCHDATE datetime,  @TIME1 datetime ,   @RTCLCMTD smallint,  @DENXRATE numeric(19,7),  @MCTRXSTT smallint,  @DECPLACS   smallint,  @TableName   varchar(50),   @CopmpanyID int,  @SqlSessionID int,  @INTERID char(5) ,  @Post int,  @OFFINDX int,  @LedgerID Smallint   as begin   set nocount on   declare @aaGLWorkDistID  int,  @Status smallint  Select  @aaGLWorkDistID  =0,  @Status  =0   exec aagGLWorkHdrUpdate  @JRNENTRY,@RCTRXSEQ, @GLPOSTDT, @LedgerID, @aaGLWorkHdrID output, @CopmpanyID output    exec aagGLWorkDistUpdate @aaGLWorkHdrID, @aaGLWorkDistID,   @JRNENTRY,  @CURNCYID,@CURRNIDX, @RATETPID,@EXGTBLID,  @XCHGRATE, @EXCHDATE,  @TIME1 , @RTCLCMTD, @DENXRATE, @MCTRXSTT,  @DECPLACS,@TableName, @BalAmt,@CopmpanyID, @SqlSessionID,@INTERID,@Post,@OFFINDX, @RCTRXSEQ   if @TableName = 'GL10101'  begin  exec aagRenumberAAGLDistsALL @aaGLWorkHdrID,@Status  end   set nocount off end     
GO
GRANT EXECUTE ON  [dbo].[aagCreateGLWorkDist] TO [DYNGRP]
GO
