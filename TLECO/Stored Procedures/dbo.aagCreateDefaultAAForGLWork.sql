SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCreateDefaultAAForGLWork]  @JRNENTRY int,  @InterID  char(5),  @SqlSessionID  int,  @USERID char(15) as  begin  set nocount on  declare @aaGLWorkHdrID int ,   @RCTRXSEQ int,   @BalAmt numeric(19,5),  @CURNCYID char(15),  @CURRNIDX smallint,  @RATETPID char(15),  @EXGTBLID char(15),  @XCHGRATE numeric(19,7),  @EXCHDATE datetime,  @TIME1 datetime ,   @RTCLCMTD smallint,  @DENXRATE numeric(19,7),  @MCTRXSTT smallint,  @DECPLACS   smallint,  @TableName   varchar(50),   @Post int,  @OFFINDX int,  @GLPOSTDT datetime,  @CompanyID smallint,  @Ledger_ID smallint  Select  @aaGLWorkHdrID  = 0,  @RCTRXSEQ  = 0,   @CURRNIDX  = 0,  @XCHGRATE  = 0,  @RTCLCMTD  = 0,  @DENXRATE  = 0,  @MCTRXSTT  = 0,  @DECPLACS   = 0,  @Post   = 0,  @OFFINDX   = 0,  @CompanyID  = 0,  @BalAmt   = 0,  @Ledger_ID = 0   SELECT @CompanyID = CMPANYID FROM DYNAMICS. .SY01500 WHERE INTERID = DB_NAME()  if exists(select TRXDATE from GL10000 where JRNENTRY = @JRNENTRY)  begin  select @RCTRXSEQ = RCTRXSEQ,  @GLPOSTDT = TRXDATE,  @CURNCYID = CURNCYID, @CURRNIDX = CURRNIDX,  @RATETPID = RATETPID, @EXGTBLID = EXGTBLID,   @XCHGRATE = XCHGRATE, @EXCHDATE = EXCHDATE,   @TIME1 = TIME1,       @RTCLCMTD = RTCLCMTD,  @DENXRATE = DENXRATE, @MCTRXSTT = MCTRXSTT,   @Ledger_ID = Ledger_ID   from GL10000   Where JRNENTRY = @JRNENTRY   exec aagCreateGLWorkDist @JRNENTRY, @aaGLWorkHdrID output, @RCTRXSEQ, @GLPOSTDT,0,   @CURNCYID,@CURRNIDX,@RATETPID ,@EXGTBLID ,@XCHGRATE,  @EXCHDATE,@TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT,  @DECPLACS,'GL10001' ,@CompanyID, @SqlSessionID, @InterID,0,0, @Ledger_ID  end   else if exists(select TRXDATE from GL10100 where JRNENTRY = @JRNENTRY)  begin  select  @GLPOSTDT = TRXDATE,@OFFINDX = OFFINDX,@BalAmt =  TRXBALNC,@CURNCYID = CURNCYID  from GL10100   Where JRNENTRY = @JRNENTRY   set @Ledger_ID = 1   exec aagCreateGLWorkDist @JRNENTRY, @aaGLWorkHdrID output, @RCTRXSEQ, @GLPOSTDT,0,   @CURNCYID,@CURRNIDX,@RATETPID ,@EXGTBLID ,@XCHGRATE,  @EXCHDATE,@TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT,  @DECPLACS,'GL10101' ,@CompanyID, @SqlSessionID, @InterID,0,@OFFINDX, @Ledger_ID  end   set nocount off end     
GO
GRANT EXECUTE ON  [dbo].[aagCreateDefaultAAForGLWork] TO [DYNGRP]
GO
