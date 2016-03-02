SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Set_Contract_Line_Invoice]  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5) AS  declare @TempTotal numeric(19,5) declare @DailyRate numeric(19,2), @OrigDailyRate numeric(19,2) declare @Number_of_Invoices integer, @DecimalNumberOfInvoice numeric(19,2) declare @BillOnDate smallint declare @ContLineStartDate datetime declare @ContLineEndDate datetime declare @ContLineBillStartDate datetime, @ProratedContLineBillStartDate datetime, @CalContLineBillStartDate datetime declare @ContLineBillEndDate datetime, @ProratedContLineBillEndDate datetime, @CalContLineBillEndDate datetime declare @CoverageStartDate datetime declare @CoverageEndDate datetime, @CoverageEndDateOdd datetime declare @LCED datetime declare @LBD datetime declare @InvoiceDate datetime declare @InvoiceAmount numeric(19,2)  declare @LINECOUNTER integer declare @IATOTAL numeric(19,2) declare @TOTAL numeric(19,2) declare @BillingPeriods integer declare @msg varchar(120) declare @monthsavail integer declare @tempday smallint,@BillStartDay smallint,@BillEndDay smallint declare @BillingMonths numeric(19,2) declare @NEXTBILLDATE datetime declare @BILLAMOUNT numeric(19,2) declare @CAMTTOINVOICEMETER numeric(19,2) declare @CNUMOFINV int declare @ContractMonths numeric(19,2) declare @MONTHAMOUNT numeric(19,5) declare @FIRSTMONTHDAYS numeric(19,2), @FIRSTMONTHDAYSPartial numeric(19,2) declare @PartialMonth numeric(19,5) declare @FIRSTMONTHDAYSB int declare @MONTHCOUNT int declare @LastDayOfFirstMonth datetime declare @INVOICEMONTHS integer declare @Prorate tinyint declare @Smooth tinyint, @SmoothBillingChecked tinyint declare @DiscountPercent int declare @DiscountDollar numeric(19,2)  declare @InvoiceDiscount numeric(19,2) declare @MONTHDiscount numeric(19,2), @OrigMONTHDiscount numeric(19,2)  declare @NewBillAmount numeric(19,5) declare @DTotal numeric(19,2) declare @OrigInvoiceAmount numeric(19,5)  declare @OrigInvoiceDiscount numeric(19,5) declare @ORIGBILLAMOUNT numeric(19,5)  declare @ORIGCAMTTOINVOICEMETER numeric(19,5) declare @ORIGMONTHAMOUNT numeric(19,5) declare @OrigNewBillAmount numeric(19,5) declare @OrigDiscountDollar numeric(19,5) declare @ORIGTOTAL numeric(19,5) declare @ORIGIATOTAL numeric(19,5) declare @I_sRateCalcMethod  smallint ,   @I_sViewMode   smallint,   @I_nExchangeRate  numeric(15,7),   @I_nDenomExchangeRate numeric(15,7),   @I_sMCTrxState   smallint,   @I_sDecimalPlaces  smallint,   @O_iErrorState          int declare   @TOTALBILLED numeric(19,2) ,  @DTOTALBILLED numeric(19,2) ,  @LASTDATE datetime  declare @OrigDistAmount numeric(19,2)  declare @DistAmount numeric(19,2) declare @mmInterval integer declare @ddInterval integer declare @MinDate datetime, @MaxDate datetime declare @FirstPartialAmount numeric(19,2) declare @FirstPartialDAmount numeric(19,2) declare @ContractPeriod smallint declare @DECPLCUR smallint declare @ITEMNMBR char(30) declare @AtEvery smallint, @FrequencyQty numeric(19,2), @BillType smallint, @1stInvoiceDays int declare @TotalDays int, @CalculatedDays int declare @ContHdrBillEndDate datetime, @ContHdrBillStartDate datetime declare @CNTPRCOVR tinyint  set nocount on SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  exec smGetMinDate @MinDate output select @MaxDate = dateadd(yy, 1099, @MinDate)   delete from SVC00603 with (ROWLOCK) where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.LNSEQNBR = @LNSEQNBR   select @Smooth = SmoothInvoiceCalc, @SmoothBillingChecked = SmoothInvoiceCalc, @AtEvery = svcBillingFrequency, @ContHdrBillEndDate = BILEND,   @ContHdrBillStartDate = BILSTRT, @FrequencyQty = isnull(svcFrequencyQty,1), @BillType = BILCYC  from SVC00600 WITH (NOLOCK) where CONSTS = @CONSTS and CONTNBR = @CONTNBR   select @LINECOUNTER = 1, @DailyRate = 1, @I_sViewMode = 3     if @FrequencyQty = 0   select @FrequencyQty = 1  select @BillOnDate = S.BILONDY,  @ContLineStartDate = S.STRTDATE,  @ContLineEndDate = S.ENDDATE,  @ContLineBillStartDate = S.BILSTRT,  @ProratedContLineBillStartDate = S.STRTDATE,  @ProratedContLineBillEndDate = S.ENDDATE,  @ContLineBillEndDate = S.BILEND,  @TOTAL = S.TOTAL,  @CoverageStartDate = S.STRTDATE,  @CoverageEndDate = S.ENDDATE,  @BillingPeriods = BILPRD,   @BillingMonths = DATEDIFF(mm,S.BILSTRT,S.BILEND),  @BillStartDay = datepart(dd,S.BILSTRT),  @DailyRate = (S.TOTAL / ((DATEDIFF(dd,S.STRTDATE,S.ENDDATE) + 1.0) * 1.0)),  @OrigDailyRate = (S.ORIGTOTAL / ((DATEDIFF(dd,S.STRTDATE,S.ENDDATE) + 1.0) * 1.0)),  @MONTHAMOUNT = S.SVC_Monthly_Price,   @ORIGMONTHAMOUNT = ORIGMONTHPRICE,  @DiscountPercent = S.DSCPCTAM,  @DiscountDollar = S.DSCDLRAM,  @OrigDiscountDollar = S.ORDDLRAT,  @ORIGTOTAL = S.ORIGTOTAL,  @I_sRateCalcMethod = S.RATECALC,   @I_nExchangeRate = S.XCHGRATE,   @I_nDenomExchangeRate = S.DENXRATE,   @I_sMCTrxState = S.MCTRXSTT,  @I_sDecimalPlaces = DECPLACS,  @ContractPeriod = Contract_Period,  @ITEMNMBR = ITEMNMBR,  @CNTPRCOVR = CNTPRCOVR  from SVC00601 S with (NOLOCK)  where S.CONSTS = @CONSTS and  S.CONTNBR = @CONTNBR and  S.LNSEQNBR = @LNSEQNBR select @DECPLCUR = DECPLCUR from IV00101 where ITEMNMBR = @ITEMNMBR if @DECPLCUR = 0 or @DECPLCUR is null  select @DECPLCUR = DECPLCUR from SOP40100 if @BillingPeriods > 1   select @BillingPeriods = @BillingPeriods + 1   if @BillStartDay = 1 and @BillType > 2 and (@ContLineBillStartDate = @ContHdrBillStartDate)  select @Smooth = 1  if @AtEvery = 1   select @Number_of_Invoices = 1 else  Begin  exec SVC_EVGR_Get_Number_Of_Inivoice  @BillType ,  @ContLineBillStartDate ,  @ContLineBillEndDate ,  @FrequencyQty ,  @Smooth ,  @Number_of_Invoices output   End  if @Smooth = 1 or (@Smooth = 0 and @BillStartDay = 1 and (@ContLineBillStartDate = @ContHdrBillStartDate))  select @Prorate = 0, @CalContLineBillStartDate = @ContLineBillStartDate, @CalContLineBillEndDate = @ContLineBillEndDate else  select @Prorate = 1, @CalContLineBillStartDate = @ProratedContLineBillStartDate, @CalContLineBillEndDate = @ProratedContLineBillEndDate  if @BillType = 4 and @SmoothBillingChecked = 0 and @BillingMonths /12.0 <> @FrequencyQty * 12  select @Prorate = 1 if @BillType > 2 and @CNTPRCOVR = 0  begin  exec SVC_Calc_Monthly_Amount @CalContLineBillStartDate,@CalContLineBillEndDate,@TOTAL, @MONTHAMOUNT output   exec SVC_Calc_Monthly_Amount @CalContLineBillStartDate,@CalContLineBillEndDate,@DiscountDollar, @MONTHDiscount output   exec SVC_Calc_Monthly_Amount @CalContLineBillStartDate,@CalContLineBillEndDate,@ORIGTOTAL, @ORIGMONTHAMOUNT output   exec SVC_Calc_Monthly_Amount @CalContLineBillStartDate,@CalContLineBillEndDate,@OrigDiscountDollar, @OrigMONTHDiscount output   end else if @BillType = 2 and @CNTPRCOVR = 0  begin  exec svcCalcWeeklyAmount @CalContLineBillStartDate,@CalContLineBillEndDate,@TOTAL, @MONTHAMOUNT output   exec svcCalcWeeklyAmount @CalContLineBillStartDate,@CalContLineBillEndDate,@DiscountDollar, @MONTHDiscount output   exec svcCalcWeeklyAmount @CalContLineBillStartDate,@CalContLineBillEndDate,@ORIGTOTAL, @ORIGMONTHAMOUNT output   exec svcCalcWeeklyAmount @CalContLineBillStartDate,@CalContLineBillEndDate,@OrigDiscountDollar, @OrigMONTHDiscount output   end else if @BillType = 1 and @CNTPRCOVR = 0  begin  select @MONTHAMOUNT = @TOTAL / (datediff(dd, @CalContLineBillStartDate, @CalContLineBillEndDate) + 1),   @MONTHDiscount = @DiscountDollar / (datediff(dd, @CalContLineBillStartDate, @CalContLineBillEndDate) + 1) ,  @ORIGMONTHAMOUNT = @ORIGTOTAL / (datediff(dd, @CalContLineBillStartDate, @CalContLineBillEndDate) + 1),   @OrigMONTHDiscount = @OrigDiscountDollar / (datediff(dd, @CalContLineBillStartDate, @CalContLineBillEndDate) + 1)   end else  select @MONTHDiscount = @MONTHAMOUNT *(@DiscountPercent /10000.0) ,  @OrigMONTHDiscount = @ORIGMONTHAMOUNT * (@DiscountPercent /10000.0)   select @InvoiceDate = @ContLineBillStartDate if @Number_of_Invoices = 0 or @Number_of_Invoices is null  select @Number_of_Invoices = 1   if @AtEvery = 1   begin  select @InvoiceDate = case @BillType  when 1 then dateadd(dd, @FrequencyQty -1, @ContLineBillStartDate)  when 2 then dateadd(ww, @FrequencyQty, @ContLineBillStartDate)  when 3 then dateadd(mm, @FrequencyQty, @ContLineBillStartDate)  when 4 then dateadd(yy, @FrequencyQty, @ContLineBillStartDate)  end  end else   Begin  if @BillType < 3  select @InvoiceDate = dateadd(dd, @BillOnDate - 1, @ContLineBillStartDate)  else  begin  exec SVC_EOM @InvoiceDate OUTPUT  SELECT @tempday = DATEPART(dd,@InvoiceDate)  exec SVC_GetLiabilityMonths @ContLineStartDate,@ContLineEndDate,@ContractMonths OUTPUT  if @Prorate = 0 and DATEPART(dd,@ContLineStartDate) <> 1 and @ContractMonths <> 1  select @ContractMonths = @ContractMonths - 1  if @BillStartDay > @BillOnDate   BEGIN   select @InvoiceDate = DATEADD(dd,(@BillOnDate - @tempday),@InvoiceDate)  if @Prorate = 0 select @InvoiceDate = DATEADD(mm,1,@InvoiceDate)   END  else   BEGIN  if @tempday > @BillOnDate   select @InvoiceDate = DATEADD(dd,(@BillOnDate - @tempday),@InvoiceDate)  END  end  End  if @InvoiceDate > @ContLineBillEndDate  select @InvoiceDate = @ContLineBillEndDate  if @TOTAL = 0   BEGIN  update SVC00601 with (ROWLOCK) set   NUMOFINV = 0,  Amount_To_Invoice = 0.0,  Orig_Amount_To_Invoice = 0.0,  SVC_Discount_Remaining = 0.0,  OrigDiscountRemaining = 0.0,  SVC_Discount_Next = 0.0,  OrigDiscountNext =0.0,   NXTBLDTE =  @InvoiceDate  where SVC00601.CONSTS = @CONSTS and SVC00601.CONTNBR = @CONTNBR and SVC00601.LNSEQNBR = @LNSEQNBR    select @NewBillAmount = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @OrigNewBillAmount = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0))  from SVC00603 WITH (NOLOCK) where CONSTS = @CONSTS and CONTNBR = @CONTNBR and POSTED = 0  select @TOTAL = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @ORIGTOTAL = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0)),  @DiscountDollar = SUM(isnull(DSCDLRAM,0)) , @OrigDiscountDollar = SUM(isnull(ORDDLRAT,0))  from SVC00603 WITH (NOLOCK) where CONSTS = @CONSTS and CONTNBR = @CONTNBR  exec SVC_GetContractNextBillDate @CONSTS,@CONTNBR,0,@ContLineStartDate, @InvoiceDate output, 0,0   update SVC00600 with (ROWLOCK) set NXTBLDTE =  @InvoiceDate,  Amount_To_Invoice = IsNull(@NewBillAmount,0),  Orig_Amount_To_Invoice =  IsNull(@OrigNewBillAmount,0),  TOTAL = IsNull(@TOTAL,0), ORIGTOTAL = IsNull(@ORIGTOTAL,0),  DSCDLRAM = isnull(@DiscountDollar,0), ORDDLRAT = isnull(@OrigDiscountDollar,0)  where CONSTS = @CONSTS and CONTNBR = @CONTNBR  return(0)   END  select @mmInterval = @FrequencyQty    select @CoverageEndDate = case @BillType  when 1 then dateadd(dd,-1,dateadd(dd,@FrequencyQty,@CoverageStartDate))  when 2 then dateadd(dd,-1,dateadd(ww,@FrequencyQty,@CoverageStartDate))  when 3 then dateadd(dd,-1,dateadd(mm,@FrequencyQty,@CoverageStartDate))  when 4 then dateadd(dd,-1,dateadd(yy,@FrequencyQty,@CoverageStartDate)) end  if @Prorate = 1 and @BillType > 2 and @Number_of_Invoices > 1 and (datepart(dd,@ContLineStartDate) <> 1)  begin  select @CoverageEndDate = DATEADD(mm,-1, @CoverageEndDate)  exec SVC_EOM @CoverageEndDate OUTPUT  end  select @CoverageEndDate =   CASE   WHEN (@CoverageEndDate > @ContLineEndDate) THEN @ContLineEndDate  WHEN @Number_of_Invoices = 1 then @ContLineEndDate   ELSE @CoverageEndDate  END   select @MONTHCOUNT = DATEDIFF(mm,@ContLineBillStartDate,@ContLineBillEndDate) select @LCED = @CoverageEndDate, @LBD = @InvoiceDate  if @BillType < 3   begin  select @InvoiceAmount = ROUND(@MONTHAMOUNT * @FrequencyQty,2) ,  @OrigInvoiceAmount = ROUND(@ORIGMONTHAMOUNT * @FrequencyQty,2),  @InvoiceDiscount = ROUND(@MONTHDiscount * @FrequencyQty,2),  @OrigInvoiceDiscount = ROUND(@OrigMONTHDiscount * @FrequencyQty,2)   end  else if @Prorate = 1   BEGIN  select @InvoiceDiscount = ROUND(@DiscountDollar / @Number_of_Invoices,2),  @OrigInvoiceDiscount = ROUND(@OrigDiscountDollar / @Number_of_Invoices,2)  select @InvoiceAmount = ROUND(@TOTAL / @Number_of_Invoices,2) ,  @OrigInvoiceAmount = ROUND(@ORIGTOTAL / @Number_of_Invoices,2)    select @FIRSTMONTHDAYSB = DATEPART(dd,@ContLineStartDate)  select @LastDayOfFirstMonth = @ContLineStartDate   exec SVC_EOM @LastDayOfFirstMonth OUTPUT  select @FIRSTMONTHDAYSPartial = DATEPART(dd,@LastDayOfFirstMonth)- @FIRSTMONTHDAYSB + 1,  @FIRSTMONTHDAYS = DATEPART(dd,@LastDayOfFirstMonth)  select @PartialMonth = @FIRSTMONTHDAYSPartial/@FIRSTMONTHDAYS  select @1stInvoiceDays = (datediff(dd, @CoverageStartDate,@CoverageEndDate)+1)  select @InvoiceAmount = @DailyRate * @1stInvoiceDays,   @OrigInvoiceAmount = @OrigDailyRate * @1stInvoiceDays,  @InvoiceDiscount = (@DiscountDollar * @1stInvoiceDays) /(DATEDIFF(dd,@ContLineStartDate,@ContLineEndDate) + 1.0),   @OrigInvoiceDiscount = (@OrigDiscountDollar * @1stInvoiceDays) /(DATEDIFF(dd,@ContLineStartDate,@ContLineEndDate) + 1.0)   if @BillType = 3 and @CNTPRCOVR = 1    begin  select @InvoiceAmount = @MONTHAMOUNT * (@PartialMonth + @FrequencyQty-1),  @OrigInvoiceAmount = @ORIGMONTHAMOUNT * (@PartialMonth + @FrequencyQty-1)  select @InvoiceDiscount = ROUND(@InvoiceAmount * (@DiscountPercent /10000.0),2),  @OrigInvoiceDiscount = ROUND(@OrigInvoiceAmount * (@DiscountPercent /10000.0),2)  end  if @BillType = 4 and @CNTPRCOVR = 1 and @BillingMonths >12   begin  select @InvoiceAmount = @MONTHAMOUNT * 12,  @OrigInvoiceAmount = @ORIGMONTHAMOUNT * 12  select @InvoiceDiscount = ROUND(@InvoiceAmount * (@DiscountPercent /10000.0),2),  @OrigInvoiceDiscount = ROUND(@OrigInvoiceAmount * (@DiscountPercent /10000.0),2)  end  END else  Begin  select @InvoiceDiscount = ROUND(@DiscountDollar / @Number_of_Invoices,2),  @OrigInvoiceDiscount = ROUND(@OrigDiscountDollar / @Number_of_Invoices,2)  select @InvoiceAmount = ROUND(@TOTAL / @Number_of_Invoices,2) ,  @OrigInvoiceAmount = ROUND(@ORIGTOTAL / @Number_of_Invoices,2)   End  if @Number_of_Invoices = 1  select @InvoiceAmount = @TOTAL, @OrigInvoiceAmount = @ORIGTOTAL,  @InvoiceDiscount = @DiscountDollar, @OrigInvoiceDiscount = @OrigDiscountDollar  select @IATOTAL = @InvoiceAmount select @ORIGIATOTAL = @OrigInvoiceAmount  insert into SVC00603 with (ROWLOCK) VALUES  (@CONSTS,  @CONTNBR,  @LNSEQNBR,  @LINECOUNTER,  @InvoiceDate,  @InvoiceAmount,  @CoverageStartDate,  @CoverageEndDate,  0,  @MinDate,  0,  0,  ((@InvoiceAmount-@InvoiceDiscount) / ((DATEDIFF(dd,@CoverageStartDate,@CoverageEndDate) + 1.0) * 1.0)),   @InvoiceDiscount,  @OrigInvoiceAmount,  0,  0,  @OrigInvoiceDiscount,0,'',0  )  if @Number_of_Invoices > 1 BEGIN  select @LINECOUNTER = @LINECOUNTER + 1 WHILE @TOTAL - @IATOTAL > (@InvoiceAmount + (@InvoiceAmount / 32))  BEGIN   select @CoverageStartDate = dateadd(dd, 1, @CoverageEndDate),   @InvoiceDate = case @BillType  when 1 then dateadd(dd, @FrequencyQty, @InvoiceDate)  when 2 then dateadd(ww, @FrequencyQty, @InvoiceDate)  when 3 then dateadd(mm, @FrequencyQty, @InvoiceDate)  when 4 then dateadd(yy, @FrequencyQty, @InvoiceDate)  end  select @CoverageEndDate = case @BillType  when 1 then dateadd(dd,-1,dateadd(dd,@FrequencyQty,@CoverageStartDate))  when 2 then dateadd(dd,-1,dateadd(ww,@FrequencyQty,@CoverageStartDate))  when 3 then dateadd(dd,-1,dateadd(mm,@FrequencyQty,@CoverageStartDate))  when 4 then dateadd(dd,-1,dateadd(yy,@FrequencyQty,@CoverageStartDate))  end   if @Smooth = 1 and @BillType = 3 and DATEPART(dd,@ContLineStartDate) >= 28  begin  select @CoverageEndDateOdd = DATEADD(mm,(@LINECOUNTER)*@mmInterval,@ContLineStartDate)-1   if @CoverageEndDateOdd > @CoverageEndDate  select @CoverageEndDate = @CoverageEndDateOdd  end   if @CoverageStartDate >= @ContLineEndDate   BEGIN  select @CoverageStartDate = @ContLineEndDate  select @CoverageEndDate = @ContLineEndDate  END   if @CoverageEndDate > @ContLineEndDate  select @CoverageEndDate = @ContLineEndDate   if @BillType = 3 and @BillOnDate >= 30  begin  exec SVC_EOM @InvoiceDate OUTPUT   SELECT @tempday = DATEPART(dd,@InvoiceDate)  if (@tempday > @BillOnDate)  select @InvoiceDate = DATEADD(dd,(@BillOnDate - @tempday),@InvoiceDate)  end  if @InvoiceDate > @ContLineBillEndDate  select @InvoiceDate = @ContLineBillEndDate   if @BillType > 2  begin  if @BillType = 3 and @Prorate = 1   begin  select @InvoiceAmount = ROUND(@MONTHAMOUNT * @FrequencyQty ,2) ,  @OrigInvoiceAmount = ROUND(@ORIGMONTHAMOUNT * @FrequencyQty,2) ,  @InvoiceDiscount = ROUND(@InvoiceAmount * (@DiscountPercent /10000.0),2),  @OrigInvoiceDiscount = ROUND(@OrigInvoiceAmount * (@DiscountPercent /10000.0),2)  end  else if @BillType = 4 and @Prorate = 1   select @InvoiceAmount = ROUND(@MONTHAMOUNT * 12 * @FrequencyQty ,2) ,  @OrigInvoiceAmount = ROUND(@ORIGMONTHAMOUNT * 12 * @FrequencyQty,2) ,  @InvoiceDiscount = ROUND(@InvoiceAmount * 12 * (@DiscountPercent /10000.0),2),  @OrigInvoiceDiscount = ROUND(@OrigInvoiceAmount * 12 * (@DiscountPercent /10000.0),2)  else  begin  select @InvoiceDiscount = ROUND(@DiscountDollar / @Number_of_Invoices,2),  @OrigInvoiceDiscount = ROUND(@OrigDiscountDollar / @Number_of_Invoices,2),  @InvoiceAmount = ROUND(@TOTAL / @Number_of_Invoices,2),  @OrigInvoiceAmount = ROUND(@ORIGTOTAL / @Number_of_Invoices,2)  end  end  if @IATOTAL + @InvoiceAmount > @TOTAL   select @InvoiceAmount = @TOTAL - @IATOTAL, @OrigInvoiceAmount = @ORIGTOTAL - @ORIGIATOTAL    insert into SVC00603 with (ROWLOCK)  VALUES  (@CONSTS,  @CONTNBR,  @LNSEQNBR,  @LINECOUNTER,  @InvoiceDate,  @InvoiceAmount,  @CoverageStartDate,  @CoverageEndDate,  0,  @MinDate,  0,  0,  ((@InvoiceAmount-@InvoiceDiscount) / ((DATEDIFF(dd,@CoverageStartDate,@CoverageEndDate) + 1.0) * 1.0)),  @InvoiceDiscount,  @OrigInvoiceAmount,  0,  0,  @OrigInvoiceDiscount,0,'',0      )   select @LCED = @CoverageEndDate,  @LBD = @InvoiceDate,  @LINECOUNTER = @LINECOUNTER + 1 ,  @IATOTAL = @IATOTAL + ROUND(@InvoiceAmount,2),  @ORIGIATOTAL = @ORIGIATOTAL + ROUND(@OrigInvoiceAmount,@I_sDecimalPlaces)  END   select @CoverageStartDate = dateadd(dd, 1, @CoverageEndDate),   @InvoiceDate = case @BillType  when 1 then dateadd(dd, @FrequencyQty, @InvoiceDate)  when 2 then dateadd(ww, @FrequencyQty, @InvoiceDate)  when 3 then dateadd(mm, @FrequencyQty, @InvoiceDate)  when 4 then dateadd(yy, @FrequencyQty, @InvoiceDate)  end  select @CoverageEndDate = @ContLineEndDate  if @CoverageStartDate >= @ContLineEndDate   select @CoverageStartDate = @ContLineEndDate   if @BillType > 2 and @BillOnDate >= 30  begin  exec SVC_EOM @InvoiceDate OUTPUT   SELECT @tempday = DATEPART(dd,@InvoiceDate)  if (@tempday > @BillOnDate)  select @InvoiceDate = DATEADD(dd,(@BillOnDate - @tempday),@InvoiceDate)  end   if @InvoiceDate > @ContLineBillEndDate  select @InvoiceDate = @ContLineBillEndDate  select @InvoiceAmount = @TOTAL - @IATOTAL,  @OrigInvoiceAmount = @ORIGTOTAL - @ORIGIATOTAL  select @InvoiceDiscount = @DiscountDollar - SUM(ROUND(DSCDLRAM,2)),  @OrigInvoiceDiscount = @OrigDiscountDollar - SUM(ROUND(ORDDLRAT,@I_sDecimalPlaces))  from SVC00603 WITH (NOLOCK) where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and   SVC00603.LNSEQNBR = @LNSEQNBR   if (DATEDIFF(dd,@CoverageStartDate,@CoverageEndDate) + 1.0) = 0  select @CoverageStartDate = DATEADD(dd,1,@CoverageStartDate)   if @InvoiceAmount <> 0  BEGIN  insert into SVC00603 with (ROWLOCK)  VALUES  (@CONSTS,  @CONTNBR,  @LNSEQNBR,  @LINECOUNTER,  @InvoiceDate,  @InvoiceAmount,  @CoverageStartDate,  @CoverageEndDate,  0,  @MinDate,  0,  0,  ((@InvoiceAmount-@InvoiceDiscount) / ((DATEDIFF(dd,@CoverageStartDate,@CoverageEndDate) + 1.0) * 1.0)),  @InvoiceDiscount,  @OrigInvoiceAmount,  0,  0,  @OrigInvoiceDiscount,0,'',0    )   END  select @LCED = @CoverageEndDate,  @LBD = @InvoiceDate,  @LINECOUNTER = @LINECOUNTER + 1,  @IATOTAL = @IATOTAL + @InvoiceAmount,  @ORIGIATOTAL = @ORIGIATOTAL + @OrigInvoiceAmount  END  select @NEXTBILLDATE = MIN(SVC00603.INVODATE),  @BILLAMOUNT = SUM(SVC00603.DOCAMNT),@Number_of_Invoices = count(*),  @ORIGBILLAMOUNT = SUM(IsNull(SVC00603.ORDOCAMT,0)) from SVC00603 WITH (NOLOCK)  where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.LNSEQNBR = @LNSEQNBR AND  SVC00603.POSTED = 0   select @CAMTTOINVOICEMETER = sum(isnull(SVC00607.Amount_To_Invoice,0)),  @ORIGCAMTTOINVOICEMETER =  sum(isnull(SVC00607.Orig_Amount_To_Invoice,0))  from SVC00607 WITH (NOLOCK) where SVC00607.CONSTS = @CONSTS and   SVC00607.CONTNBR = @CONTNBR and  SVC00607.LNSEQNBR = @LNSEQNBR if @CAMTTOINVOICEMETER <> 0  begin  select @BILLAMOUNT = @BILLAMOUNT + @CAMTTOINVOICEMETER,  @ORIGBILLAMOUNT = @ORIGBILLAMOUNT + @ORIGCAMTTOINVOICEMETER  if @Number_of_Invoices = 0 or @Number_of_Invoices is null  select @Number_of_Invoices = 1  if @NEXTBILLDATE = @MinDate or @NEXTBILLDATE is null  select @NEXTBILLDATE = min(SVC00607.INVODATE)  from SVC00607 WITH (NOLOCK)  where SVC00607.CONSTS = @CONSTS and   SVC00607.CONTNBR = @CONTNBR and  SVC00607.LNSEQNBR = @LNSEQNBR END  update SVC00601 with (ROWLOCK)  set SVC00601.NUMOFINV = @Number_of_Invoices,  @CNUMOFINV = @Number_of_Invoices,  SVC00601.NXTBLDTE = IsNull(@NEXTBILLDATE, @MaxDate),  @NEXTBILLDATE =  IsNull(@NEXTBILLDATE, @MaxDate),  SVC00601.Amount_To_Invoice = IsNull(@BILLAMOUNT,0),  @NewBillAmount = SVC00601.Amount_To_Invoice,  SVC00601.SVC_Monthly_Price = round(@MONTHAMOUNT, @DECPLCUR-1),  SVC00601.Orig_Amount_To_Invoice = IsNull(@ORIGBILLAMOUNT,0),  @OrigNewBillAmount = IsNull(@ORIGBILLAMOUNT,0) - SVC00601.Orig_Amount_To_Invoice,  SVC00601.ORIGMONTHPRICE = round(@ORIGMONTHAMOUNT, @I_sDecimalPlaces) where SVC00601.CONSTS = @CONSTS and  SVC00601.CONTNBR = @CONTNBR and  SVC00601.LNSEQNBR = @LNSEQNBR  exec SVC_GetContractNextBillDate @CONSTS, @CONTNBR, 0, @ContLineBillStartDate, @NEXTBILLDATE output, 0,0  select @NewBillAmount = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @OrigNewBillAmount = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0))  from SVC00603 WITH (NOLOCK) where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and SVC00603.POSTED = 0  select @TOTAL = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @ORIGTOTAL = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0)),  @DiscountDollar = SUM(isnull(DSCDLRAM,0)) , @OrigDiscountDollar = SUM(isnull(ORDDLRAT,0))  from SVC00603 WITH (NOLOCK) where CONSTS = @CONSTS and CONTNBR = @CONTNBR  UPDATE SVC00600 with (ROWLOCK) SET SVC00600.NUMOFINV = CASE  WHEN @CNUMOFINV > SVC00600.NUMOFINV THEN @CNUMOFINV  ELSE SVC00600.NUMOFINV  END,   SVC00600.NXTBLDTE = IsNull(@NEXTBILLDATE, @MaxDate),   SVC00600.Amount_To_Invoice = IsNull(@NewBillAmount,0),  SVC00600.Orig_Amount_To_Invoice =  IsNull(@OrigNewBillAmount,0),  TOTAL = IsNull(@TOTAL,0), ORIGTOTAL = IsNull(@ORIGTOTAL,0),  DSCDLRAM = isnull(@DiscountDollar,0), ORDDLRAT = isnull(@OrigDiscountDollar,0) FROM SVC00600 WHERE SVC00600.CONSTS = @CONSTS AND  SVC00600.CONTNBR = @CONTNBR  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Contract_Line_Invoice] TO [DYNGRP]
GO