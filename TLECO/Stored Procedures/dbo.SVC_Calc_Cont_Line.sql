SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Calc_Cont_Line](@CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5)) as declare @BaseCost numeric(19,2) declare @BasePrice numeric(19,2) declare @OptionCost numeric(19,2) declare @OptionPrice numeric(19,2) declare @OrigBaseCost numeric(19,2) declare @OrigBasePrice numeric(19,2) declare @OrigOptionCost numeric(19,2) declare @OrigOptionPrice numeric(19,2) declare @OptionPercent numeric(19,2) declare @Percent smallint declare @Cumulative tinyint declare @ITEMNMBR char(31) declare @ITMCLSCD char(11) declare @Qty numeric(19,5) declare @CUSTNMBR char(15) declare @CUSTCLAS char(15) declare @PRICSHED char(11) declare @StartDate datetime declare @EndDate datetime declare @ProratedBaseCost numeric(19,2) declare @ProratedBasePrice numeric(19,2) declare @ExtendedPrice numeric(19,2) declare @CumulativeCost numeric(19,2) declare @CumulativePrice numeric(19,2) declare @MonthlyAmount numeric(19,5) declare @OrigProratedBaseCost numeric(19,2) declare @OrigProratedBasePrice numeric(19,2) declare @OrigExtendedPrice numeric(19,2) declare @OrigCumulativeCost numeric(19,2) declare @OrigCumulativePrice numeric(19,2) declare @OrigMonthlyAmount numeric(19,5) declare @OPTTYPE char(11) declare @CNTPRCOVR tinyint declare @DiscountPercent smallint declare @DiscountDollar numeric(19,2) declare @OrigDiscountDollar numeric(19,2) declare @DiscountPrice numeric(19,2) declare @WarrantyPrice  numeric(19,2) declare @OrigDiscountPrice numeric(19,2) declare @OrigWarrantyPrice  numeric(19,2) declare @EquipmentID integer declare @OutStartDate datetime declare @OutEndDate datetime declare @OverridenCost numeric(19,2) declare @Old_OverridenCost numeric(19,2) declare @OverridenPrice numeric(19,2) declare @OrigOverridenCost numeric(19,2) declare @OrigOverridenPrice numeric(19,2) declare @UnderWarranty tinyint declare @OldMonthly numeric(19,2) declare @Total numeric (19,2) declare @OrigOldMonthly numeric(19,2) declare @OrigTotal numeric (19,2) declare @PriceType integer declare @I_sRateCalcMethod  smallint ,   @I_sViewMode   smallint,   @I_nExchangeRate  numeric(15,7),  @I_nDenomExchangeRate numeric(15,7),  @I_sMCTrxState   smallint,   @I_sDecimalPlaces  smallint,  @O_iErrorState          int declare @Cal_DiscountPercent numeric(19,5)  declare @KeepOldPrice char(1) declare @oldCONSTS smallint,@oldUnitPrice numeric(19,2),@oldBasePrice numeric(19,2),  @oldCONTNBR char(11),@LineStatus char(1),@oldPRICSHED char(11),  @MaxIncPct numeric (19,5) declare @OldStartDate datetime declare @OldEndDate datetime declare @BillType smallint, @NumberOfWeeks smallint declare @HeaderStartDate datetime, @HeaderEndDate datetime  set nocount on SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  select @ITEMNMBR = ITEMNMBR,   @CUSTNMBR = CUSTNMBR,   @EquipmentID = EQUIPID,   @Qty = QUANTITY,   @PRICSHED = PRICSHED,  @StartDate = STRTDATE,  @EndDate = ENDDATE,  @CNTPRCOVR = CNTPRCOVR,  @DiscountPercent = DSCPCTAM,  @DiscountDollar = DSCDLRAM,  @MonthlyAmount = SVC_Monthly_Price,  @OverridenCost = Unit_Cost_Total,  @Old_OverridenCost = Unit_Cost_Total,  @OverridenPrice = Total_Unit,  @Total = TOTAL,  @OrigDiscountDollar = ORDDLRAT,  @OrigMonthlyAmount = ORIGMONTHPRICE,  @OrigOverridenCost = ORIGUNITCOSTTOTAL,  @OrigOverridenPrice = Originating_Total_Unit,  @OrigTotal = ORIGTOTAL,  @I_sRateCalcMethod = RATECALC,   @I_sViewMode = VIEWMODE,            @I_nExchangeRate = XCHGRATE,   @I_nDenomExchangeRate = DENXRATE,   @I_sDecimalPlaces = DECPLACS,   @I_sMCTrxState = MCTRXSTT,  @KeepOldPrice = PRCSTAT ,  @LineStatus = Contract_Line_Status   from SVC00601   where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR  select @BillType = BILCYC from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR  if @KeepOldPrice = '1' return   if @DiscountDollar = 0 or @Total = 0 or @LineStatus = 'R'   select @Cal_DiscountPercent = @DiscountPercent else  select @Cal_DiscountPercent = isnull((10000.0 * @DiscountDollar/@Total),0)  select @UnderWarranty = SVC_Contract_Warranty from SVC00998 with (NOLOCK) select @CUSTCLAS = CUSTCLAS from RM00101 with (NOLOCK) where CUSTNMBR = @CUSTNMBR select @ITMCLSCD = ITMCLSCD from IV00101 with (NOLOCK) where ITEMNMBR = @ITEMNMBR exec @PriceType = SVC_Get_Contract_Base_Price @PRICSHED,   @ITMCLSCD OUTPUT,   @ITEMNMBR OUTPUT,   @CUSTCLAS OUTPUT,   @CUSTNMBR OUTPUT,   @BaseCost output,   @BasePrice output select @CumulativeCost = @BaseCost select @CumulativePrice = @BasePrice if @CNTPRCOVR = 1    BEGIN  select @CumulativePrice= @OverridenPrice, @OrigCumulativePrice= @OrigOverridenPrice , @OverridenCost = 0   if @OverridenCost = 0   BEGIN   select @CumulativeCost = @BaseCost  exec SVC_Prorate_Amount @StartDate,@EndDate,@CumulativeCost,@ProratedBaseCost output  select @CumulativeCost = @ProratedBaseCost  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @CumulativeCost,@OrigCumulativeCost OUTPUT, @O_iErrorState OUTPUT   END  if @UnderWarranty = 0  select @OutStartDate = @StartDate  else  BEGIN  exec SVC_Warranty_Amount @ITEMNMBR,@EquipmentID,@StartDate,@EndDate,@OverridenPrice,@WarrantyPrice output,@OutStartDate output  exec SVC_Warranty_Amount @ITEMNMBR,@EquipmentID,@StartDate,@EndDate,@OrigOverridenPrice,@OrigWarrantyPrice output,@OutStartDate output  END  if @OutStartDate <> @StartDate   BEGIN  exec SVC_Prorate_Amount @OutStartDate,@EndDate,@CumulativePrice,@ProratedBasePrice output  exec SVC_Prorate_Amount @OutStartDate,@EndDate,@OrigCumulativePrice,@OrigProratedBasePrice output  select @ExtendedPrice = @ProratedBasePrice, @OrigExtendedPrice = @OrigProratedBasePrice  if @BillType > 2  begin  exec SVC_Calc_Monthly_Amount @OutStartDate ,@EndDate ,@ExtendedPrice, @MonthlyAmount output  exec SVC_Calc_Monthly_Amount @OutStartDate ,@EndDate ,@OrigExtendedPrice, @OrigMonthlyAmount output  end   END  else   select @ExtendedPrice = @Total, @OrigExtendedPrice = @OrigTotal   if exists(select 1 from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR)  Begin  if @BillType > 2  begin  exec SVC_Calc_Monthly_Amount @OutStartDate ,@EndDate ,@ExtendedPrice, @MonthlyAmount output  exec SVC_Calc_Monthly_Amount @OutStartDate ,@EndDate ,@OrigExtendedPrice, @OrigMonthlyAmount output  end  else if @BillType = 1  select @MonthlyAmount = @ExtendedPrice / (datediff(dd,@StartDate ,@EndDate)+1),  @OrigMonthlyAmount = @OrigExtendedPrice / (datediff(dd,@StartDate ,@EndDate)+1)  else if @BillType = 2  begin  exec svcCalcWeeklyAmount @StartDate ,@EndDate ,@ExtendedPrice, @MonthlyAmount output  exec svcCalcWeeklyAmount @StartDate ,@EndDate ,@OrigExtendedPrice, @OrigMonthlyAmount output  end  End  else  select @MonthlyAmount = isnull(@MonthlyAmount,0.0), @OrigMonthlyAmount = isnull(@OrigMonthlyAmount,0.0)   if @Cal_DiscountPercent > 0  select @DiscountDollar = round((@ExtendedPrice * @Cal_DiscountPercent/10000.0),2),  @OrigDiscountDollar = round((@OrigExtendedPrice * @Cal_DiscountPercent/10000.0),2)  if @OverridenCost = 0 and @Old_OverridenCost <> 0   select @OverridenCost = @Old_OverridenCost   update SVC00601 with (ROWLOCK) set DSCDLRAM = @DiscountDollar,  SVC_Monthly_Price = @MonthlyAmount,  TOTAL = @ExtendedPrice,  UNITCOST = @CumulativeCost,  Unit_Cost_Total = @OverridenCost,  ORDDLRAT = @OrigDiscountDollar,  ORIGMONTHPRICE = @OrigMonthlyAmount,  ORIGTOTAL = @OrigExtendedPrice,  ORUNTCST = @OrigCumulativeCost,  ORIGUNITCOSTTOTAL = @OrigOverridenCost  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  END  ELSE   BEGIN  select @I_sViewMode = 3  declare Cont_Line_Options cursor for select OPTTYPE   from SVC00652 where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR order by DEX_ROW_ID   open Cont_Line_Options   fetch next from Cont_Line_Options into @OPTTYPE   while @@FETCH_STATUS = 0  BEGIN  select @OptionCost = 0,@OptionPrice = 0,@OptionPercent = 0,@Percent = 0   exec SVC_Get_Contract_Option_Price @PRICSHED,   @OPTTYPE,  @ITMCLSCD,   @ITEMNMBR,   @CUSTCLAS,   @CUSTNMBR,   @OptionCost output,   @OptionPrice output,  @OptionPercent output,  @Percent output,  @Cumulative output  if @Percent = 1   BEGIN  select @CumulativeCost = @CumulativeCost + @OptionCost   select @CumulativePrice = @CumulativePrice + @OptionPrice   END  if @Percent = 2   BEGIN  if @Cumulative = 1  BEGIN  select @OptionCost = @CumulativeCost * @OptionPercent / 100.0  select @OptionPrice = @CumulativePrice * @OptionPercent / 100.0  select @CumulativeCost = @CumulativeCost + @OptionCost   select @CumulativePrice = @CumulativePrice + @OptionPrice   END  else  BEGIN  select @OptionCost = @BaseCost * @OptionPercent / 100.0  select @OptionPrice = @BasePrice * @OptionPercent / 100.0  select @CumulativeCost = @CumulativeCost + @OptionCost   select @CumulativePrice = @CumulativePrice + @OptionPrice   END  END  if @Percent = 3   BEGIN  if @Cumulative = 1  BEGIN  select @OptionCost = -@CumulativeCost * @OptionPercent / 100.0  select @OptionPrice = -@CumulativePrice * @OptionPercent / 100.0  select @CumulativeCost = @CumulativeCost + @OptionCost   select @CumulativePrice = @CumulativePrice + @OptionPrice   END  else  BEGIN  select @OptionCost = -@BaseCost * @OptionPercent / 100.0  select @OptionPrice = -@BasePrice * @OptionPercent / 100.0  select @CumulativeCost = @CumulativeCost + @OptionCost   select @CumulativePrice = @CumulativePrice + @OptionPrice   END  END  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @OptionCost,@OrigOptionCost OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @OptionPrice,@OrigOptionPrice OUTPUT, @O_iErrorState OUTPUT  update SVC00652 with (ROWLOCK) set STRTDATE = @StartDate,  ENDDATE = @EndDate,  UNITCOST = @OptionCost,  UNITPRCE = @OptionPrice,  ORUNTCST = @OrigOptionCost,  ORUNTPRC = @OrigOptionPrice  where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR and  OPTTYPE = @OPTTYPE   fetch next from Cont_Line_Options into @OPTTYPE   END  deallocate Cont_Line_Options   if @UnderWarranty = 0   select @OutStartDate = @StartDate  else  exec SVC_Warranty_Amount @ITEMNMBR,@EquipmentID,@StartDate,@EndDate,@CumulativePrice,@WarrantyPrice output,@OutStartDate output  exec SVC_Prorate_Amount @StartDate,@EndDate,@CumulativeCost,@ProratedBaseCost output  exec SVC_Prorate_Amount @OutStartDate,@EndDate,@CumulativePrice,@ProratedBasePrice output if @LineStatus = 'R'  begin  select @oldCONSTS = Source_Contract_Type, @oldCONTNBR = Source_Contract_Number,@MaxIncPct = MXINCPCT  from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR  if @MaxIncPct > 0   Begin  select @StartDate = STRTDATE, @EndDate = ENDDATE, @oldUnitPrice = Total_Unit, @oldPRICSHED = PRICSHED from SVC00601  where CONSTS = @oldCONSTS and CONTNBR = @oldCONTNBR and LNSEQNBR = @LNSEQNBR  select @HeaderStartDate = STRTDATE, @HeaderEndDate = ENDDATE from SVC00600 where CONSTS = @oldCONSTS and CONTNBR = @oldCONTNBR  if @HeaderStartDate <> @StartDate   begin  if @oldPRICSHED <> @PRICSHED   exec @PriceType = SVC_Get_Contract_Base_Price @oldPRICSHED,   @ITMCLSCD OUTPUT,   @ITEMNMBR OUTPUT,   @CUSTCLAS OUTPUT,   @CUSTNMBR OUTPUT,   @BaseCost output,   @oldUnitPrice output  else  select @oldUnitPrice = @oldUnitPrice * (datediff(dd,@HeaderStartDate,@HeaderEndDate) + 1)/(datediff(dd,@StartDate, @EndDate) + 1)  end  if @ProratedBasePrice > (@oldUnitPrice * (1+(@MaxIncPct/100.0)))  select @ProratedBasePrice = (@oldUnitPrice * (1+(@MaxIncPct/100.0)))  End  end   select @ExtendedPrice = @ProratedBasePrice * @Qty   if @BillType > 2  exec SVC_Calc_Monthly_Amount @StartDate ,@EndDate ,@ExtendedPrice, @MonthlyAmount output  else if @EndDate > @StartDate  begin  if @BillType = 1  select @MonthlyAmount = @ExtendedPrice / (datediff(dd,@StartDate ,@EndDate)+1)  else if @BillType = 2  exec svcCalcWeeklyAmount @StartDate ,@EndDate ,@ExtendedPrice, @MonthlyAmount output  end   select @DiscountDollar = @ProratedBasePrice * (@Cal_DiscountPercent/10000.0) * @Qty  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ExtendedPrice,@OrigExtendedPrice OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ProratedBasePrice,@OrigProratedBasePrice OUTPUT, @O_iErrorState OUTPUT   exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @ProratedBaseCost,@OrigProratedBaseCost OUTPUT, @O_iErrorState OUTPUT   exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @MonthlyAmount,@OrigMonthlyAmount OUTPUT, @O_iErrorState OUTPUT   exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @DiscountDollar,@OrigDiscountDollar OUTPUT, @O_iErrorState OUTPUT   update SVC00601 with (ROWLOCK) set TOTAL = @ExtendedPrice,  Total_Unit = @ProratedBasePrice,  UNITCOST = @ProratedBaseCost,  Unit_Cost_Total = @ProratedBaseCost * @Qty,  SVC_Monthly_Price = @MonthlyAmount,  DSCDLRAM = @DiscountDollar,  ORIGTOTAL = @OrigExtendedPrice,  Originating_Total_Unit = @OrigProratedBasePrice,   ORUNTCST = @OrigProratedBaseCost ,  ORIGUNITCOSTTOTAL = @OrigProratedBaseCost * @Qty ,  ORIGMONTHPRICE = @OrigMonthlyAmount,   ORDDLRAT = @OrigDiscountDollar   where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_Cont_Line] TO [DYNGRP]
GO