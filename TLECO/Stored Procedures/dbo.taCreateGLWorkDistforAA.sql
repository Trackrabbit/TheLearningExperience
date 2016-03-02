SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateGLWorkDistforAA]   @JRNENTRY    int,  @aaGLWorkHdrID int output,   @RCTRXSEQ int,   @GLPOSTDT Datetime,   @BalAmt numeric(19,5),  @CURNCYID char(15),  @CURRNIDX smallint,  @RATETPID char(15),  @EXGTBLID char(15),  @XCHGRATE numeric(19,7),  @EXCHDATE datetime,  @TIME1 datetime ,   @RTCLCMTD smallint,  @DENXRATE numeric(19,7),  @MCTRXSTT smallint,  @DECPLACS   smallint,  @TableName   varchar(50),   @CopmpanyID int,  @SqlSessionID int,  @INTERID char(5) ,  @Post int,  @OFFINDX int,  @LedgerID Smallint  as begin   set nocount on   declare @aaGLWorkDistID  int,  @Status smallint  Select  @aaGLWorkDistID  =0,  @Status  =0   exec aagGLWorkHdrUpdate  @JRNENTRY,@RCTRXSEQ, @GLPOSTDT, @LedgerID, @aaGLWorkHdrID output, @CopmpanyID output    exec taUpdateGLEntryOptforAA @aaGLWorkHdrID, @JRNENTRY, @aaGLWorkDistID Output,   @CURNCYID,@CURRNIDX, @RATETPID,@EXGTBLID,  @XCHGRATE, @EXCHDATE,  @TIME1 , @RTCLCMTD, @DENXRATE, @MCTRXSTT,  @DECPLACS,@CopmpanyID, @SqlSessionID,@INTERID   exec aagRenumberAAGLDistsALL @aaGLWorkHdrID,@Status   set nocount off end     
GO
GRANT EXECUTE ON  [dbo].[taCreateGLWorkDistforAA] TO [DYNGRP]
GO
