SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[svcGetContractInvoiceAmountBySite]  @CONSTS smallint,  @CONTNBR char(11),  @BillToCust char(15),  @BillToAddress char(15),  @CHECKDATE datetime,  @USERDATE datetime,  @TOTALINVOICED numeric(19,2) OUTPUT,  @TOTALCREDITED numeric(19,2) OUTPUT,  @TOTALMETER numeric(19,2) OUTPUT,  @TOTDISCOUNT numeric(19,2) OUTPUT,  @ORIGTOTALINVOICED numeric(19,2) OUTPUT,  @ORIGTOTALCREDITED numeric(19,2) OUTPUT,  @ORIGTOTALMETER numeric(19,2) OUTPUT,  @ORIGTOTDISCOUNT numeric(19,2) OUTPUT,  @UseMeterOverage smallint,  @MultiCredit tinyint = 0 output AS  declare @BILLAMOUNT numeric(19,2) declare @ORIGBILLAMOUNT numeric(19,2) declare @LIABILITY integer declare @BP integer declare @INVOICECOUNT integer declare @LINECOUNT integer declare @MA integer declare @INVOICEMONTHS integer declare @MAXLINES integer declare @LNSEQNBR numeric(19,5) declare @CNUMOFINV integer declare @NEXTBILLDATE datetime declare @NEXTLIABDATE datetime declare @LIABAMT numeric(19,2) declare @ORIGLIABAMT numeric(19,2) declare @LIABMONTHAMT numeric(19,2) declare @ORIGLIABMONTHAMT numeric(19,2) declare @LIABMONTHS integer declare @TOTALBILLED numeric(19,2) declare @ORIGTOTALBILLED numeric(19,2) declare @TOTALREDUCED numeric(19,2) declare @LINECREDIT numeric(19,2) declare @ORIGLINECREDIT numeric(19,2) declare @LIABILITYTYPE smallint declare @LINETYPE char(1) declare @CAMTTOINVOICEMETER numeric(19,2) declare @ORIGCAMTTOINVOICEMETER numeric(19,2) declare @DISCOUNTAMOUNT numeric(19,2) declare @ORIGDISCOUNTAMOUNT numeric(19,2) declare @DiscountPercent smallint declare @msg varchar(60) declare @I_sRateCalcMethod  smallint ,           @I_sViewMode   smallint,            @I_nExchangeRate  numeric(15,7),   @I_LineExchangeRate  numeric(15,7),     @I_nDenomExchangeRate numeric(15,7),       @I_sMCTrxState   smallint,            @I_sDecimalPlaces  smallint,            @O_iErrorState  int declare @ExchangeDate datetime, @ExchangeTime datetime, @Original_ExchangeRate  numeric(15,7) declare @MinDate datetime declare @TOTALAMOUNTTBEBILLED numeric(19,2)   declare @TOTALBILLAMOUNT numeric(19,2),  @TOTALORIGBILLAMOUNT numeric(19,2)   declare @ORDOCAMT numeric(19,2),  @DOCAMNT numeric(19,2),  @PSTDAMNT numeric(19,2), @OrigPSTDAMNT numeric(19,2),  @SVC_Invoice_Credit_Amoun numeric(19,2),  @OrigInvCreditAmt numeric(19,2),  @ORDDLRAT numeric(19,2),  @DEX_ROW_ID int,  @SVC_Coverage_Start_Date datetime, @SVC_Coverage_End_Date datetime declare @DSCDLRAM numeric(19,2) declare @InvoiceDate datetime, @ORIGTOTAL numeric(19,2), @ORIGDiscountDollar numeric(19,2),  @TOTAL numeric(19,2), @DiscountDollar numeric(19,2), @CancelAmount numeric(19,2) declare @L_svcReverseType int, @603svcReverseType int declare @ReversedInvoiceDate datetime, @nNumberofCredit smallint declare @UseUserDdate tinyint, @LineInvoiceDate datetime declare @UseCurrentHist smallint    exec smGetMinDate @MinDate output  select @I_sViewMode = 4            select @BILLAMOUNT = SUM(IsNull(SVC00603.DOCAMNT,0)),  @TOTALREDUCED = SUM(IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @TOTALBILLED =  SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @TOTDISCOUNT = SUM(IsNull(SVC00603.DSCDLRAM,0)),  @ORIGTOTALCREDITED = SUM(IsNull(SVC00603.OrigInvCreditAmt,0)),  @ORIGTOTALINVOICED =  SUM(IsNull(SVC00603.ORDOCAMT,0)),  @ORIGTOTDISCOUNT = SUM(IsNull(SVC00603.ORDDLRAT,0)),  @LineInvoiceDate = max(INVODATE) from  SVC00603 WITH (NOLOCK) left join SVC00601  ON SVC00601.CONSTS = SVC00603.CONSTS AND SVC00601.CONTNBR = SVC00603.CONTNBR AND SVC00601.LNSEQNBR=SVC00603.LNSEQNBR  where SVC00603.CONSTS = @CONSTS and SVC00603.CONTNBR = @CONTNBR and SVC00603.INVODATE <= @CHECKDATE and SVC00603.POSTED = 0  AND SVC00601.Bill_To_Customer = @BillToCust AND SVC00601.SVC_Bill_To_Address_Code = @BillToAddress and SVC00601.Credit_Hold = 0  select  @TOTALINVOICED = IsNull(@BILLAMOUNT,0),@ORIGTOTALINVOICED = isnull(@ORIGTOTALINVOICED,0),  @TOTALCREDITED = IsNull(@TOTALREDUCED,0),@ORIGTOTALCREDITED = isnull(@ORIGTOTALCREDITED,0),  @TOTDISCOUNT = IsNull(@TOTDISCOUNT,0),@ORIGTOTDISCOUNT = isnull(@ORIGTOTDISCOUNT,0) select @CAMTTOINVOICEMETER = isnull(sum(SVC00607.Amount_To_Invoice),0),  @ORIGCAMTTOINVOICEMETER = isnull(sum(SVC00607.Orig_Amount_To_Invoice),0) from SVC00607 WITH (NOLOCK)  left join SVC00601  ON SVC00601.CONSTS = SVC00607.CONSTS AND SVC00601.CONTNBR = SVC00607.CONTNBR AND SVC00601.LNSEQNBR=SVC00607.LNSEQNBR  where SVC00607.CONSTS = @CONSTS and SVC00607.CONTNBR = @CONTNBR and SVC00607.INVODATE <= @CHECKDATE   AND SVC00601.Bill_To_Customer = @BillToCust AND SVC00601.SVC_Bill_To_Address_Code = @BillToAddress select @TOTALMETER = isnull(@CAMTTOINVOICEMETER,0),  @ORIGTOTALMETER = isnull(@ORIGCAMTTOINVOICEMETER,0) select @TOTALAMOUNTTBEBILLED = SUM(IsNull(SVC00603.DOCAMNT,0)) from SVC00603 WITH (NOLOCK) where SVC00603.CONSTS = @CONSTS and SVC00603.CONTNBR = @CONTNBR   if (@BILLAMOUNT = 0 and @TOTALREDUCED = 0 and  @CAMTTOINVOICEMETER = 0 and @TOTALAMOUNTTBEBILLED = 0) return 0  select @UseCurrentHist = svcBillingExchangeRate from SVC00998  begin transaction    select @TOTALBILLAMOUNT = 0,  @TOTALORIGBILLAMOUNT = 0  update SVC00603 set svcReverseType = (svcReverseType + 90) * -1 where  CONSTS = @CONSTS and CONTNBR = @CONTNBR and svcReverseType <= -90  if (@BILLAMOUNT <> 0 or @TOTALREDUCED <> 0 or @TOTALAMOUNTTBEBILLED <> 0 or @TOTALMETER <> 0)  BEGIN  select  @LIABILITYTYPE = SVC_Liability_Type,@I_nExchangeRate = XCHGRATE,  @ExchangeDate = EXCHDATE, @ExchangeTime = TIME1  from SVC00600 WITH (NOLOCK) where CONSTS = @CONSTS and CONTNBR = @CONTNBR   declare Cont_Line_inv_Cursor cursor for select LNSEQNBR from SVC00601 where  CONSTS = @CONSTS   and CONTNBR = @CONTNBR and Bill_To_Customer = @BillToCust AND SVC_Bill_To_Address_Code = @BillToAddress and Credit_Hold = 0  open Cont_Line_inv_Cursor   fetch next from Cont_Line_inv_Cursor into @LNSEQNBR  while (@@FETCH_STATUS = 0)  BEGIN  if @TOTALMETER <> 0  BEGIN   select @CAMTTOINVOICEMETER = sum(isnull(SVC00607.Amount_To_Invoice,0)),  @ORIGCAMTTOINVOICEMETER = sum(isnull(SVC00607.Orig_Amount_To_Invoice,0)) from SVC00607 WITH (NOLOCK)  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and INVODATE <= @CHECKDATE and LNSEQNBR = @LNSEQNBR   END   select  @LINETYPE = Contract_Line_Status, @nNumberofCredit = 0, @UseUserDdate = 0,  @DiscountPercent = DSCPCTAM, @CancelAmount = 0,  @I_sRateCalcMethod = RATECALC,   @I_LineExchangeRate = XCHGRATE,  @I_sDecimalPlaces =  DECPLACS,   @I_nDenomExchangeRate = DENXRATE,   @I_sMCTrxState = MCTRXSTT  from SVC00601 WITH (NOLOCK) where  SVC00601.CONSTS = @CONSTS and  SVC00601.CONTNBR = @CONTNBR and  SVC00601.LNSEQNBR = @LNSEQNBR    declare UpdatePostedAmount CURSOR for   select DOCAMNT,PSTDAMNT,SVC_Invoice_Credit_Amoun,ORDOCAMT,DEX_ROW_ID,SVC_Coverage_Start_Date,  SVC_Coverage_End_Date,OrigInvCreditAmt,ORDDLRAT, DSCDLRAM, svcReverseType, INVODATE  from SVC00603 WITH (NOLOCK) where  CONSTS = @CONSTS and CONTNBR = @CONTNBR and  INVODATE <= @CHECKDATE and LNSEQNBR = @LNSEQNBR and POSTED = 0    select @BILLAMOUNT = 0, @ORIGBILLAMOUNT = 0, @ORIGDISCOUNTAMOUNT = 0,  @LINECREDIT = 0, @ORIGLINECREDIT = 0, @INVOICECOUNT = 0, @DISCOUNTAMOUNT = 0   open UpdatePostedAmount  fetch next from UpdatePostedAmount into @DOCAMNT,@PSTDAMNT,@SVC_Invoice_Credit_Amoun,@ORDOCAMT,@DEX_ROW_ID,  @SVC_Coverage_Start_Date,@SVC_Coverage_End_Date,@OrigInvCreditAmt,@ORDDLRAT, @DSCDLRAM,  @603svcReverseType, @ReversedInvoiceDate  WHILE (@@FETCH_status = 0)  BEGIN  select @OrigPSTDAMNT = @ORDOCAMT - @OrigInvCreditAmt - @ORDDLRAT,  @PSTDAMNT = @DOCAMNT -@SVC_Invoice_Credit_Amoun - @DSCDLRAM  if @UseCurrentHist <> 2 and @I_LineExchangeRate <> @I_nExchangeRate and @I_nExchangeRate <> 0  begin  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @OrigPSTDAMNT,@PSTDAMNT OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ORDOCAMT,@DOCAMNT OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @OrigInvCreditAmt,@SVC_Invoice_Credit_Amoun OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ORDDLRAT,@DSCDLRAM OUTPUT, @O_iErrorState OUTPUT  end   set @L_svcReverseType = (@603svcReverseType * -1) - 90  if (@L_svcReverseType <> -91 and @SVC_Invoice_Credit_Amoun > 0)   select  @InvoiceDate = @USERDATE   else  select @InvoiceDate = @LineInvoiceDate   if @L_svcReverseType <> -91   update SVC00603 with (ROWLOCK)  set SVC00603.PSTDAMNT = @PSTDAMNT,  DOCAMNT = @DOCAMNT,SVC_Invoice_Credit_Amoun = @SVC_Invoice_Credit_Amoun,  SVC00603.POSTED = 1, INVODATE = @InvoiceDate,  SVC00603.ORIGPSTDAMNT = @OrigPSTDAMNT,  DSCDLRAM = @DSCDLRAM,  SVC00603.POSTEDDT = @USERDATE,  @INVOICEMONTHS = DATEDIFF(mm,@SVC_Coverage_Start_Date,@SVC_Coverage_End_Date) + 1.0   , svcReverseType= @L_svcReverseType   where SVC00603.CONSTS = @CONSTS and SVC00603.CONTNBR = @CONTNBR and DEX_ROW_ID = @DEX_ROW_ID  else  update SVC00603 with (ROWLOCK)  set SVC00603.PSTDAMNT = DOCAMNT - SVC_Invoice_Credit_Amoun - DSCDLRAM,  SVC00603.POSTED = 1, INVODATE = @ReversedInvoiceDate,  SVC00603.ORIGPSTDAMNT = @OrigPSTDAMNT,  SVC00603.POSTEDDT = @USERDATE, @nNumberofCredit = @nNumberofCredit + 1 ,  svcReverseType= @L_svcReverseType   where SVC00603.CONSTS = @CONSTS and SVC00603.CONTNBR = @CONTNBR and DEX_ROW_ID = @DEX_ROW_ID   if @@error <> 0 goto badentry   if @L_svcReverseType <> -91  begin  select @BILLAMOUNT = @BILLAMOUNT + IsNull(@PSTDAMNT,0)  select @ORIGBILLAMOUNT = @ORIGBILLAMOUNT + IsNull(@OrigPSTDAMNT,0)  select @ORIGDISCOUNTAMOUNT = @ORIGDISCOUNTAMOUNT + IsNull(@ORDDLRAT,0)  select @ORIGLINECREDIT = @ORIGLINECREDIT + IsNull(@OrigInvCreditAmt,0),  @LINECREDIT = @LINECREDIT + isnull(@SVC_Invoice_Credit_Amoun,0)  select @DISCOUNTAMOUNT = @DISCOUNTAMOUNT + isnull(@DSCDLRAM,0)  select @INVOICECOUNT = @INVOICECOUNT + 1   select @TOTALBILLAMOUNT = @TOTALBILLAMOUNT + IsNull(@PSTDAMNT,0)   select @TOTALORIGBILLAMOUNT = @TOTALORIGBILLAMOUNT + IsNull(@ORDOCAMT,0) - IsNull(@OrigInvCreditAmt,0)   end   fetch next from UpdatePostedAmount into @DOCAMNT,@PSTDAMNT,@SVC_Invoice_Credit_Amoun,@ORDOCAMT,@DEX_ROW_ID,  @SVC_Coverage_Start_Date,@SVC_Coverage_End_Date,@OrigInvCreditAmt,@ORDDLRAT, @DSCDLRAM,  @603svcReverseType,@ReversedInvoiceDate  END  close UpdatePostedAmount  DEALLOCATE UpdatePostedAmount   if @nNumberofCredit >= 1   select @MultiCredit = 1   select @NEXTBILLDATE = MIN(SVC00603.INVODATE), @CNUMOFINV = count(*)  from SVC00603 WITH (NOLOCK) where  SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.LNSEQNBR = @LNSEQNBR and  SVC00603.POSTED = 0   if not exists(select * from SVC00604 where CONSTS = @CONSTS and CONTNBR = @CONTNBR) and @ORIGDISCOUNTAMOUNT <> @DISCOUNTAMOUNT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ORIGDISCOUNTAMOUNT,@DISCOUNTAMOUNT OUTPUT, @O_iErrorState OUTPUT  if @ORIGLINECREDIT <> 0   BEGIN  if not exists(select * from SVC00604 where CONSTS = @CONSTS and CONTNBR = @CONTNBR)  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ORIGLINECREDIT,@LINECREDIT OUTPUT, @O_iErrorState OUTPUT  select @DiscountPercent = isnull(@DiscountPercent,0)  select @ORIGDISCOUNTAMOUNT = (@ORIGLINECREDIT / (1-@DiscountPercent/10000.0)) - @ORIGLINECREDIT  select @DISCOUNTAMOUNT = (@LINECREDIT / (1-@DiscountPercent/10000.0)) - @LINECREDIT  select @LINECREDIT = @LINECREDIT + @DISCOUNTAMOUNT, @ORIGLINECREDIT = @ORIGLINECREDIT + @ORIGDISCOUNTAMOUNT  select @TOTDISCOUNT = @DISCOUNTAMOUNT + @TOTDISCOUNT  END   if @BILLAMOUNT <> 0 or @LINECREDIT <> 0 or @ORIGDISCOUNTAMOUNT <> 0 or @TOTALMETER <> 0  BEGIN  select @TOTAL = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @ORIGTOTAL = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0)),  @DiscountDollar = SUM(isnull(DSCDLRAM,0)) , @ORIGDiscountDollar = sum(isnull(ORDDLRAT,0))  from SVC00603 WITH (NOLOCK) where  SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.LNSEQNBR = @LNSEQNBR    update SVC00601 with (ROWLOCK)  set TOTAL = isnull(@TOTAL,0), DSCDLRAM = isnull(@DiscountDollar,0),  ORIGTOTAL = isnull(@ORIGTOTAL,0), ORDDLRAT = isnull(@ORIGDiscountDollar,0),  SVC00601.Last_Amount_Billed = IsNull(@BILLAMOUNT,0) + isnull(@CAMTTOINVOICEMETER,0),  SVC00601.ORIGLASTAmountBilled = IsNull(@ORIGBILLAMOUNT,0) + isnull(@ORIGCAMTTOINVOICEMETER,0),   SVC00601.LSTBLDTE = @USERDATE,  SVC00601.FRSTBLDTE = CASE  WHEN (SVC00601.FRSTBLDTE = @MinDate) THEN @USERDATE  ELSE SVC00601.FRSTBLDTE  END,   SVC00601.TOTBIL = SVC00601.TOTBIL + IsNull(@BILLAMOUNT,0),  SVC00601.ORIGTOTBIL = SVC00601.ORIGTOTBIL + IsNull(@ORIGBILLAMOUNT,0),   SVC00601.BILSTAT = CASE SVC00601.BILSTAT  WHEN 0 THEN 1  ELSE SVC00601.BILSTAT  END,  @BP = CASE  WHEN (SVC00601.BILCYC = 1) THEN 1  WHEN (SVC00601.BILCYC = 2) THEN 2  WHEN (SVC00601.BILCYC = 3) THEN 3  WHEN (SVC00601.BILCYC = 4) THEN 6  WHEN (SVC00601.BILCYC = 5) THEN 12  ELSE 1  END,  SVC00601.Amount_To_Invoice = SVC00601.Amount_To_Invoice - IsNull(@BILLAMOUNT,0) - IsNull(@DISCOUNTAMOUNT,0),  SVC00601.Orig_Amount_To_Invoice = SVC00601.Orig_Amount_To_Invoice - IsNull(@ORIGBILLAMOUNT,0) - IsNull(@ORIGDISCOUNTAMOUNT,0),  SVC00601.SVC_Invoiced_Discount = IsNull(@DISCOUNTAMOUNT,0),  SVC00601.ORIGINVOICEDDISC = IsNull(@ORIGDISCOUNTAMOUNT,0),   SVC00601.Invoiced_Amount = CASE   when @BILLAMOUNT < 0 then IsNull(@BILLAMOUNT,0)  ELSE IsNull(@BILLAMOUNT,0)+ IsNull(@DISCOUNTAMOUNT,0)  END,  SVC00601.Orig_Invoiced_Amount = CASE   when @ORIGBILLAMOUNT < 0 then IsNull(@ORIGBILLAMOUNT,0)  ELSE IsNull(@ORIGBILLAMOUNT,0)+IsNull(@ORIGDISCOUNTAMOUNT,0)  END,   @LIABILITY = SVC00601.BILCYC, NUMOFINV = @CNUMOFINV  where  SVC00601.CONSTS = @CONSTS and  SVC00601.CONTNBR = @CONTNBR and  SVC00601.LNSEQNBR = @LNSEQNBR    if @@error <> 0 goto badentry  END   else  BEGIN   if (select NXTBLDTE from SVC00601 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR) <= @CHECKDATE  update SVC00601 with (ROWLOCK) set   SVC00601.LSTBLDTE = @USERDATE,  SVC00601.FRSTBLDTE = CASE  WHEN (SVC00601.FRSTBLDTE = @MinDate) THEN @USERDATE  ELSE SVC00601.FRSTBLDTE  END,   SVC00601.BILSTAT = CASE SVC00601.BILSTAT  WHEN 0 THEN 1  ELSE SVC00601.BILSTAT  END  where SVC00601.CONSTS = @CONSTS and SVC00601.CONTNBR = @CONTNBR and SVC00601.LNSEQNBR = @LNSEQNBR   END  fetch next from Cont_Line_inv_Cursor into @LNSEQNBR  END  close Cont_Line_inv_Cursor   deallocate Cont_Line_inv_Cursor   SELECT  @CNUMOFINV = ISNULL(MAX(SVC00601.NUMOFINV),0)  FROM SVC00601 WHERE (CONSTS = @CONSTS AND CONTNBR = @CONTNBR)  select @TOTAL = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @ORIGTOTAL = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0)),  @DiscountDollar = SUM(isnull(DSCDLRAM,0)) , @ORIGDiscountDollar = sum(isnull(ORDDLRAT,0))  from SVC00603 WITH (NOLOCK)   where CONSTS = @CONSTS and CONTNBR = @CONTNBR   select @BILLAMOUNT = SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0)),  @ORIGBILLAMOUNT = SUM(IsNull(SVC00603.ORDOCAMT,0) - IsNull(SVC00603.OrigInvCreditAmt,0)),   @NEXTBILLDATE = MIN(IsNull(SVC00603.INVODATE,'January 1, 2999 00:00:00')) from SVC00603 WITH (NOLOCK)  where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.POSTED = 0  UPDATE SVC00600 with (ROWLOCK) SET   TOTAL = isnull(@TOTAL,0), DSCDLRAM = isnull(@DiscountDollar,0),  ORIGTOTAL = isnull(@ORIGTOTAL,0), ORDDLRAT = isnull(@ORIGDiscountDollar,0),  SVC00600.NUMOFINV = @CNUMOFINV,   SVC00600.Amount_To_Invoice = Round(IsNull(@BILLAMOUNT,0),2),  SVC00600.Orig_Amount_To_Invoice = Round(IsNull(@ORIGBILLAMOUNT,0),2),  SVC00600.Last_Amount_Billed = IsNull(@TOTALBILLAMOUNT,0),  SVC00600.ORIGLASTAmountBilled = IsNull(@TOTALORIGBILLAMOUNT,0),   SVC00600.LSTBLDTE = @USERDATE,  SVC00600.FRSTBLDTE = CASE  WHEN (SVC00600.FRSTBLDTE  = @MinDate) THEN @USERDATE  ELSE SVC00600.FRSTBLDTE  END,  SVC00600.TOTBIL = SVC00600.TOTBIL + IsNull(@TOTALBILLAMOUNT,0),  SVC00600.ORIGTOTBIL = SVC00600.ORIGTOTBIL + IsNull(@TOTALORIGBILLAMOUNT,0),   SVC00600.BILSTAT = CASE SVC00600.BILSTAT  WHEN 0 THEN 1  ELSE SVC00600.BILSTAT  END FROM SVC00600 WHERE SVC00600.CONSTS = @CONSTS AND   SVC00600.CONTNBR = @CONTNBR END  if @CAMTTOINVOICEMETER <> 0  and @UseMeterOverage = 1  BEGIN   update SVC00607 with (ROWLOCK)  set Invoiced_Amount = Invoiced_Amount + Amount_To_Invoice,  Total_Invoiced = Total_Invoiced + Amount_To_Invoice,  Orig_Invoiced_Amount = Orig_Invoiced_Amount + Orig_Amount_To_Invoice,  OrigTotalInvoiced = OrigTotalInvoiced + Orig_Amount_To_Invoice,  Amount_To_Invoice = 0,  Orig_Amount_To_Invoice = 0  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and INVODATE <= @CHECKDATE   UPDATE SVC00600 with (ROWLOCK)  SET   SVC00600.Last_Amount_Billed = SVC00600.Last_Amount_Billed + IsNull(@TOTALMETER,0),  SVC00600.ORIGLASTAmountBilled = SVC00600.ORIGLASTAmountBilled + IsNull(@ORIGTOTALMETER,0),   SVC00600.LSTBLDTE = @USERDATE,  SVC00600.FRSTBLDTE = CASE  WHEN (SVC00600.FRSTBLDTE  = @MinDate) THEN @USERDATE  ELSE SVC00600.FRSTBLDTE  END,  SVC00600.TOTBIL = SVC00600.TOTBIL + IsNull(@TOTALMETER,0),  SVC00600.ORIGTOTBIL = SVC00600.ORIGTOTBIL + IsNull(@ORIGTOTALMETER,0),  SVC00600.BILSTAT = CASE SVC00600.BILSTAT  WHEN 0 THEN 1  ELSE SVC00600.BILSTAT  END  WHERE SVC00600.CONSTS = @CONSTS AND   SVC00600.CONTNBR = @CONTNBR  END   select @ORIGTOTALCREDITED = sum(isnull(Orig_Invoiced_Amount,0)), @TOTALCREDITED = sum(isnull(Invoiced_Amount,0))   from SVC00601  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and Orig_Invoiced_Amount < 0 select @ORIGTOTALINVOICED = sum(isnull(Orig_Invoiced_Amount,0)), @TOTALINVOICED = sum(isnull(Invoiced_Amount,0))  from SVC00601 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and Orig_Invoiced_Amount > 0  select @ORIGTOTALCREDITED = @ORIGTOTALCREDITED * -1, @TOTALCREDITED = @TOTALCREDITED * -1  if @@error <> 0 goto badentry commit transaction return 0 badentry:  rollback transaction  return @@error   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractInvoiceAmountBySite] TO [DYNGRP]
GO