SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpLoadJournalEntry]  @I_cBatchSource char(15) = NULL,  @I_iJournalEntry int   = NULL,  @I_sTransactionType smallint = NULL,  @O_iErrorState int   = NULL output as  declare  @BUSINESS_FORM smallint,  @CLEARING_TRX smallint,  @NORMAL_TRX smallint,  @BUDGET_TRX smallint,   @DEFAULT_DATE datetime,  @FINANCIAL smallint,  @iRowCount int,  @tTransaction tinyint,  @tLoop tinyint,  @dMinDate datetime,  @iStatus int  select  @O_iErrorState = 0  exec @iStatus = smGetMinDate @dMinDate output  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if      @I_cBatchSource         is NULL or  @I_iJournalEntry        is NULL or  @I_sTransactionType     is NULL   begin  select @O_iErrorState = 20886  break  end    select   @BUSINESS_FORM  = 5,  @BUDGET_TRX  = 4,   @CLEARING_TRX = 2,  @NORMAL_TRX     = 1,  @DEFAULT_DATE   = @dMinDate,  @FINANCIAL      = 2   if      @I_sTransactionType <> @BUSINESS_FORM   and  @I_sTransactionType <> @CLEARING_TRX    and  @I_sTransactionType <> @NORMAL_TRX and  @I_sTransactionType <> @BUDGET_TRX    begin  select @O_iErrorState = 20887  break  end    if @I_sTransactionType = @BUDGET_TRX  begin  insert into  #TRXHeader  select   JRNENTRY,  BACHNUMB,    @I_cBatchSource,  4,      'GBJ',     @FINANCIAL,       REFRENCE,   '',     '',      0,     0,     TRXDATE,  0,       0,     0,     0,      @DEFAULT_DATE,    0,     0,     0,     0,     '',  0,     '',     '',     0,     @DEFAULT_DATE,    @DEFAULT_DATE,    0,     0,     0,     0,     0,     0,     0,     PSTGSTUS,   GLHDRVAL,  0x00000000,    0x00000000,    0,     0,     '',     '',  0,  0.0,  0.0,    0,     @DEFAULT_DATE,   @DEFAULT_DATE,    0,     0,     0,     0,     1,     0     from  GL12000  where   JRNENTRY = @I_iJournalEntry   select @iRowCount = @@rowcount   end     else if @I_sTransactionType = @BUSINESS_FORM  begin  insert into  #TRXHeader  select   JRNENTRY,  BSNSFMID,    @I_cBatchSource,  0,     SOURCDOC,  @FINANCIAL,    REFRENCE,   TRXSORCE,  '',      0,     0,     TRXDATE,  PERIODID,  OPENYEAR,  CLOSEDYR,  HISTRX,  @DEFAULT_DATE,    0,     0,     0,     0,     CURNCYID,  0,     '',     '',     0,     @DEFAULT_DATE,    @DEFAULT_DATE,    0,     0,     TRXBALNC,    OFFINDX,    OFFACTYP,    OFFXVAR,    OFFPSTYP,    PSTGSTUS,    GLHDRVAL,  0x00000000,    0x00000000,    0,     0,     '',     '',  0,  0.0,  0.0,     0,     DOCDATE,  @dMinDate,  0,     0,     0,     0,     1,     0     from  GL10100  where   JRNENTRY = @I_iJournalEntry   select @iRowCount = @@rowcount  end    else  begin  insert into  #TRXHeader  select   JRNENTRY,  BACHNUMB,  BCHSOURC,  TRXTYPE,  SOURCDOC,  SERIES,  REFRENCE,  TRXSORCE,  RVTRXSRC,  RCRNGTRX,  RCTRXSEQ,  TRXDATE,  PERIODID,  OPENYEAR,  CLOSEDYR,  HISTRX,  RVRSNGDT,  REVPRDID,  REVYEAR,  REVCLYR,  REVHIST,  CURNCYID,  CURRNIDX,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  BALFRCLC,  0.0,    0,    0,    0,    0,    PSTGSTUS,  GLHDRVAL,  GLHDRMSG,   0x00000000,   ICTRX,  ICDISTS,  ORCOMID,  ORTRXSRC,  OrigDTASeries,  DTA_Index,  DENXRATE,  MCTRXSTT,  DOCDATE,  Tax_Date,  Original_JE,  Original_JE_Year,  Original_JE_Seq_Num,  Correcting_Trx_Type,  Ledger_ID,  Adjustment_Transaction  from  GL10000  where   JRNENTRY = @I_iJournalEntry   select @iRowCount = @@rowcount  end    if @iRowCount <> 1  begin  select @O_iErrorState = 20888  break  end   end   if  @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return   
GO
GRANT EXECUTE ON  [dbo].[glpLoadJournalEntry] TO [DYNGRP]
GO
