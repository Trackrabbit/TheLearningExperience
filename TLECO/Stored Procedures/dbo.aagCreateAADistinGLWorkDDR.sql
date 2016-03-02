SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create               procedure [dbo].[aagCreateAADistinGLWorkDDR]  @GLPOSTDT  datetime,  @CompanyID smallint,  @InterID char(5),  @SqlSessionID int,  @USERID char(15) as  begin  declare @JRNENTRY    int,  @aaGLWorkHdrID int ,   @RCTRXSEQ int,   @BalAmt numeric(19,5),  @CURNCYID char(15),  @CURRNIDX smallint,  @RATETPID char(15),  @EXGTBLID char(15),  @XCHGRATE numeric(19,7),  @EXCHDATE datetime,  @TIME1 datetime ,   @RTCLCMTD smallint,  @DENXRATE numeric(19,7),  @MCTRXSTT smallint,  @DECPLACS   smallint,  @TableName   varchar(50),   @Post int,  @OFFINDX int,  @Ledger_ID Smallint  Select  @JRNENTRY    = 0,  @aaGLWorkHdrID  = 0,  @RCTRXSEQ  = 0,   @CURRNIDX  = 0,  @XCHGRATE  = 0,  @RTCLCMTD  = 0,  @DENXRATE  = 0,  @MCTRXSTT  = 0,  @DECPLACS   = 0,  @Post   = 0,  @OFFINDX   = 0,  @Ledger_ID = 0  Declare CLGLWork cursor fast_forward for  select JRNENTRY, RCTRXSEQ,  CURNCYID,  CURRNIDX, RATETPID , EXGTBLID , XCHGRATE,  EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, Ledger_ID  from GL10000  Where (BACHNUMB like ('DDEBT%') or   BACHNUMB like ( 'DDREF%')) and  JRNENTRY >= 0 and  TRXDATE = @GLPOSTDT   order by JRNENTRY   open CLGLWork  fetch next from CLGLWork into @JRNENTRY,@RCTRXSEQ,  @CURNCYID,  @CURRNIDX,  @RATETPID ,  @EXGTBLID ,  @XCHGRATE,  @EXCHDATE,  @TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @Ledger_ID  while @@fetch_status = 0  begin  select @aaGLWorkHdrID = 0  exec aagCreateGLWorkDist @JRNENTRY, @aaGLWorkHdrID output, @RCTRXSEQ, @GLPOSTDT,0,   @CURNCYID,  @CURRNIDX,  @RATETPID ,  @EXGTBLID ,  @XCHGRATE,  @EXCHDATE,  @TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT,  @DECPLACS, 'GL10001' ,@CompanyID, @SqlSessionID, @InterID,  0,0, @Ledger_ID  fetch next from CLGLWork into @JRNENTRY,@RCTRXSEQ,  @CURNCYID,  @CURRNIDX,  @RATETPID ,  @EXGTBLID ,  @XCHGRATE,  @EXCHDATE,  @TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @Ledger_ID  end  close CLGLWork  deallocate CLGLWork end    
GO
GRANT EXECUTE ON  [dbo].[aagCreateAADistinGLWorkDDR] TO [DYNGRP]
GO
