SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmUpdateDistributions]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cTableName char(22) = NULL,  @O_nTotalFuncDebits numeric(19,5) = NULL output,  @O_nTotalFuncCredits numeric(19,5) = NULL  output,   @O_iErrorState           int             = NULL  output  as   declare  @tTransaction tinyint,  @tLoop       tinyint,  @cVoucherNumber char(44),  @cControlType char(1),   @iError int,  @iStatus int,  @sUNIT smallint,  @sORIGINATING smallint,  @mCreditAmt numeric(19,5),  @mDebitAmt numeric(19,5),  @mCAmount numeric(19,5),  @mDAmount numeric(19,5),  @sRateCalcMethod smallint,  @nXRate numeric(19,7),  @sDecimalPlaces smallint,  @cIntercompanyID char(5),  @nDenomXRate numeric(19,7),   @sMCTrxState smallint,  @cCurrencyID char(15),  @cCreditAmt   char(20),  @cDebitAmt   char(20),  @iSequence int,  @cSequence char(10)  select  @O_iErrorState   = 0,  @O_nTotalFuncDebits = 0,  @O_nTotalFuncCredits = 0,  @iError   = 0,  @iStatus  = 0,  @mCreditAmt  = 0.0,  @mDebitAmt  = 0.0,  @cCreditAmt   = '0.0',  @cDebitAmt  = '0.0',  @iSequence  = 0,  @cSequence  = '0'  if @@trancount = 0  begin  select @tTransaction = 1  begin transaction end    while (@tLoop is NULL) begin      select @tLoop = 1   if  @I_cVoucherNumber is NULL or  @I_sControlType is NULL or  @I_cTableName is NULL  begin  select @O_iErrorState = 21019  break   end    select  @sUNIT  = 15,  @sORIGINATING = 4,  @cCurrencyID = ''    select @cControlType = convert(char(1), @I_sControlType)    exec @iStatus = smFormatStringsForExecs  @I_cVoucherNumber,  @cVoucherNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  break  end    exec ('declare   DistCursor INSENSITIVE  cursor for select distinct  dist.ORCRDAMT,  dist.ORDBTAMT,  dist.DSTSQNUM,  temptbl.RTCLCMTD,  temptbl.XCHGRATE,   temptbl.DECPLACS,  temptbl.INTERID,  temptbl.DENXRATE,  temptbl.MCTRXSTT  from ' + @I_cTableName + ' temptbl, PM10100 dist   where dist.INTERID = temptbl.INTERID  and dist.VCHRNMBR = ' + @cVoucherNumber)  open DistCursor    if @@cursor_rows <>  0  begin   fetch next from  DistCursor   into  @mCAmount,   @mDAmount,  @iSequence,  @sRateCalcMethod,  @nXRate,  @sDecimalPlaces,  @cIntercompanyID,  @nDenomXRate,  @sMCTrxState   while (@@fetch_status <> -1)  begin   exec @iStatus = mcCalculateAmount  @sRateCalcMethod,  @sORIGINATING,  @nXRate,  @nDenomXRate,  @cCurrencyID,  @sMCTrxState,  @sDecimalPlaces,  '',    @mDAmount,   @mDebitAmt output,   @O_iErrorState output   select @iError = @@error  if @iStatus  = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0   break   exec @iStatus = mcCalculateAmount  @sRateCalcMethod,  @sORIGINATING,  @nXRate,  @nDenomXRate,  @cCurrencyID,  @sMCTrxState,  @sDecimalPlaces,  '',    @mCAmount,   @mCreditAmt output,   @O_iErrorState output   select @iError = @@error  if @iStatus  = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0   break   select  @cCreditAmt = convert(char,@mCreditAmt),  @cDebitAmt = convert(char,@mDebitAmt),  @cSequence = convert(char,@iSequence)   exec('update  PM10100 ' +   'set PM10100.XCHGRATE = ttable.XCHGRATE, PM10100.RATETPID = ttable.RATETPID, ' +  'PM10100.EXGTBLID = ttable.EXGTBLID, PM10100.EXCHDATE = ttable.EXCHDATE, ' +  'PM10100.TIME1 = ttable.TIME1, PM10100.RTCLCMTD = ttable.RTCLCMTD, ' +   'PM10100.EXPNDATE = ttable.EXPNDATE, ' +  'PM10100.CRDTAMNT  = ' + @cCreditAmt + ' , ' +  'PM10100.DEBITAMT  = ' + @cDebitAmt + ' , ' +  'PM10100.DENXRATE = ttable.DENXRATE, '+   'PM10100.MCTRXSTT = ttable.MCTRXSTT ' +  'from PM10100 dist, ' + @I_cTableName + ' ttable ' +   'where dist.VCHRNMBR  = ' + @cVoucherNumber +   ' and dist.CNTRLTYP  = ' + @cControlType  +   ' and dist.INTERID   = ttable.INTERID ' +  ' and dist.DSTSQNUM  = ' + @cSequence  +  ' and  ttable.INTERID = ''' + @cIntercompanyID + '''' +   ' and ttable.XCHGRATE <> 0.0 ' +  ' and dist.DISTTYPE <> 16' +   ' and dist.DISTTYPE <> 15')      select @iError = @@error  if @iError <> 0   select @iStatus = @iError  if @iStatus <> 0  break   fetch next from  DistCursor   into  @mCAmount,  @mDAmount,  @iSequence,  @sRateCalcMethod,  @nXRate,  @sDecimalPlaces,  @cIntercompanyID,  @nDenomXRate,  @sMCTrxState  end    end    deallocate DistCursor    select  @O_nTotalFuncDebits = isnull(sum(DEBITAMT), 0.0),  @O_nTotalFuncCredits = isnull(sum(CRDTAMNT), 0.0)  from  PM10100   where  VCHRNMBR  = @I_cVoucherNumber  and CNTRLTYP  = @I_sControlType  and DISTTYPE <> @sUNIT  end   if @O_iErrorState <> 0 or @iStatus <> 0  begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return (@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[icpmUpdateDistributions] TO [DYNGRP]
GO
