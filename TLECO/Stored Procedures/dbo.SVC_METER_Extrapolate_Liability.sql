SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_METER_Extrapolate_Liability](@Date datetime) as declare @ContractNumber char(11) declare @LineNumber numeric(19,5) declare @Total numeric(19,5) declare @EquipID integer declare @TOTALREDUCED numeric(19,5) declare @ContStart datetime declare @ContEnd datetime declare @MeterBase1 integer declare @Internal integer declare @Actual integer declare @FromDate datetime declare @ToDate datetime declare @DailyUsage numeric(19,5) declare @Days integer declare @Estimate numeric(19,5) declare @Percentage numeric(19,5) declare @BILLAMOUNT numeric(19,5) declare @ORIGBILLAMOUNT numeric(19,5) declare @LIABDATE datetime declare @I_sRateCalcMethod  smallint ,           @I_sViewMode   smallint,            @I_nExchangeRate  numeric(15,7),       @I_nDenomExchangeRate numeric(15,7),       @I_sMCTrxState   smallint,            @I_sDecimalPlaces  smallint,            @O_iErrorState          int declare @SourceModule char(3),  @SourceDocument varchar(255),  @LastEstimatedDate datetime  declare @TransactionDate datetime,  @TransactionTime datetime,  @ErrorCondition integer,  @RemainingAmount numeric(19,5),  @UserID char(30) declare Contract_Cursor cursor for select L.CONTNBR,   L.LNSEQNBR,   L.TOTAL,   L.EQUIPID,   L.STRTDATE,  L.ENDDATE,  M.Meter_Bases_1,  M.Meter_Internal_Uses_1,  M.Meter_Actuals_1,  L.RATECALC,   L.XCHGRATE,   L.DENXRATE,   L.MCTRXSTT,  L.DECPLACS  from SVC00601 L,SVC00607 M, SVC00951 I  where L.CONSTS = 2 and  L.CONSTS = M.CONSTS and   L.CONTNBR = M.CONTNBR and  L.LNSEQNBR = M.LNSEQNBR and  L.ITEMNMBR = I.ITEMNMBR and  I.METERED = 1 and  M.Meter_Bases_1 > 0 and  L.STRTDATE <= @Date and @Date <= L.ENDDATE and  (L.Contract_Line_Status >= 'I' or L.Contract_Line_Status < 'A') and  L.BILCYC > 1 and L.SVC_Liability_Type = 5 set nocount on select @I_sViewMode = 3            select @TransactionDate = @Date,  @TransactionTime = convert(char(12),getdate(),108),  @UserID = SYSTEM_USER  open Contract_Cursor fetch next from Contract_Cursor into @ContractNumber,  @LineNumber,  @Total,  @EquipID,  @ContStart,  @ContEnd,  @MeterBase1,  @Internal,  @Actual,  @I_sRateCalcMethod ,   @I_nExchangeRate ,   @I_nDenomExchangeRate ,   @I_sMCTrxState,@I_sDecimalPlaces while (@@fetch_status = 0)   begin  select @FromDate = max(LSTDTEDT) from SVC00301 where EQUIPID = @EquipID  select @FromDate = ISNULL(@FromDate,@ContStart)  if @FromDate < @ContStart select @FromDate = @ContStart  select @LastEstimatedDate = MAX(Transaction_Date)  from SVC00604  where CONSTS = 2 and  CONTNBR = @ContractNumber and  LNSEQNBR = @LineNumber and   Source_Trx_Document_Type = 'CLE' and  SUBSTRING(SourceTrxDocumentNumber,5,1) = '1'  IF @LastEstimatedDate is not null  BEGIN  if @LastEstimatedDate > @FromDate  select @FromDate = @LastEstimatedDate  END    select @DailyUsage = Dailys_1 from SVC00300 where EQUIPID = @EquipID  select @DailyUsage = isnull(@DailyUsage,0)  if @Date <= @ContEnd  select @ToDate = @Date   else   select @ToDate = @ContEnd  select @Days = datediff(dd,@FromDate,@ToDate)   select @Estimate = @Days * @DailyUsage   select @Percentage = @Estimate  * 1.00 / @MeterBase1 * 1.00  if @Percentage > 1.00 or @Date > @ContEnd select @Percentage = 1.00  IF @Percentage > 0.0   BEGIN   select @SourceModule = 'CLE',   @SourceDocument = CONVERT(varchar(20),@EquipID) + '-1'   exec SVC_RET_Update_Retainage 2,  @ContractNumber,  @LineNumber,  @TransactionDate,  @TransactionTime,  @TransactionDate,  @Percentage,  @I_sRateCalcMethod,  @I_nExchangeRate,  @I_nDenomExchangeRate,  @I_sMCTrxState,  @I_sDecimalPlaces,  1,  0,  0,  0,  0,  0,  @SourceModule,  @SourceDocument,  @RemainingAmount OUTPUT,  @ErrorCondition OUTPUT  end  fetch next from Contract_Cursor into @ContractNumber,  @LineNumber,  @Total,  @EquipID,  @ContStart,  @ContEnd,  @MeterBase1,  @Internal,  @Actual,  @I_sRateCalcMethod ,   @I_nExchangeRate ,   @I_nDenomExchangeRate ,   @I_sMCTrxState,@I_sDecimalPlaces  end deallocate Contract_Cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_METER_Extrapolate_Liability] TO [DYNGRP]
GO
