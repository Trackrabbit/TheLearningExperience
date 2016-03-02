SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[cmCreateDepositEntryTempTable]  @sTableName char(15) = NULL,  @DepositNumber    char(20) = NULL,  @CheckbookID char(15) = NULL,  @CheckBookCurrencyID char(15)   = NULL,  @CurrencyID char(15) = NULL,  @RcpType smallint = NULL,  @StartDate datetime = NULL,  @EndDate datetime = NULL,  @I_sMCReg smallint = NULL,  @RateTypeID char(15) = NULL,  @ExchangeTableID char(15) = NULL,  @ExchangeRate numeric(14,7) = NULL,  @ExchangeDate datetime = NULL,  @Time datetime = NULL,  @RateCalcMethod smallint = NULL,  @ExpirationDate datetime = NULL,  @DenominationExchangeRate numeric(19,7) = NULL,  @MCTransactionState smallint = NULL,  @CurrencyIndex numeric(19,5) = NULL,  @RateCalcMethod_GainLoss smallint = NULL,  @ExchangeRate_GainLoss numeric(14,7) = NULL,  @DenominationExchangeRate_GainLoss numeric(19,7) = NULL,  @MCTransactionState_GainLoss smallint = NULL,  @DecimalPlaces smallint = NULL,  @vFUNLCURR char(15) = NULL,  @FuncDecPlaces smallint = NULL,  @RcptCount smallint = NULL output,  @RcptAmtTotal numeric(19,5) = NULL output,  @RcptCksCount smallint = NULL output,  @RcptCksTotal numeric(19,5) = NULL output,  @RcptCashCount smallint = NULL output,  @RcptCashTotal numeric(19,5) = NULL output,  @RcptCCardCount smallint = NULL output,  @RcptCCardTotal numeric(19,5) = NULL output,  @O_iErrorState int  = NULL output  as  declare  @sReceiptTypedateRestrict varchar(128),  @SelectStatement varchar(128),  @SQLString NVARCHAR(500),  @ParamDef NVARCHAR(500),  @nRateCalcMethod smallint,  @CheckbookMCState smallint   select @nRateCalcMethod = @RateCalcMethod  if @CheckBookCurrencyID <> @vFUNLCURR and @CurrencyID <> @CheckBookCurrencyID  select @CheckbookMCState =  dbo.mcFuncGetMCTrxState(@CheckBookCurrencyID)  else  select @CheckbookMCState = @MCTransactionState  create table #CMDifTemp  (CMRECNUM numeric(19,0) not null,  depositnumber char(20) not null,  RcpType int not null,  RCPTNMBR char(20) not null,  RCPTAMT numeric(19,5) not null,  BANKNAME char(30) not null,  BNKBRNCH char (20) not null,  UPDATED smallint not null,   MARKED smallint not null,    receiptdate datetime not null,  Checkbook_Amount numeric(19,5) not null,  RATETPID char(15) not null,   EXGTBLID char(15) not null,   XCHGRATE numeric(14,7) not null,   Receiving_Exchange_Rate numeric(19,5) not null,  EXCHDATE datetime not null,   TIME1 datetime not null,  RTCLCMTD int not null,  EXPNDATE datetime not null,  RLGANLOS numeric(19,5) not null,  CURNCYID char(15) not null,  CURRNIDX numeric(19,5) not null,  DECPLCUR int not null,  ORIGAMT numeric(19,5) not null,  DENXRATE numeric(14,7) not null,    MCTRXSTT int not null)  insert into #CMDifTemp  SELECT B.CMRECNUM,  @DepositNumber,  B.RcpType,  B.RCPTNMBR,  B.RCPTAMT,  B.BANKNAME,  B.BNKBRNCH,  0,  1,   B.receiptdate,  Checkbook_Amount=case when @I_sMCReg=0 then B.Checkbook_Amount  when @ExchangeRate = 0.0 then round(B.ORIGAMT,@DecimalPlaces)   when @CheckBookCurrencyID <> @vFUNLCURR and B.CURNCYID = @CheckBookCurrencyID then B.Checkbook_Amount   when B.CURNCYID <> @CheckBookCurrencyID then dbo.mcFuncCalculateAmount(@nRateCalcMethod,4,@ExchangeRate,@DenominationExchangeRate, @CheckbookMCState ,@DecimalPlaces,B.ORIGAMT)  else B.Checkbook_Amount end,  RATETPID = case  when @CheckBookCurrencyID = @vFUNLCURR then @RateTypeID  when B.CURNCYID = @CheckBookCurrencyID then @RateTypeID  else B.RATETPID  end,   EXGTBLID = case  when @CheckBookCurrencyID = @vFUNLCURR then @ExchangeTableID  when B.CURNCYID = @CheckBookCurrencyID then @ExchangeTableID  else B.EXGTBLID  end,   XCHGRATE = case  when @CheckBookCurrencyID = @vFUNLCURR then @ExchangeRate  when B.CURNCYID = @CheckBookCurrencyID then @ExchangeRate  else B.XCHGRATE  end,   B.Receiving_Exchange_Rate,  EXCHDATE = case  when @CheckBookCurrencyID = @vFUNLCURR then @ExchangeDate  when B.CURNCYID = @CheckBookCurrencyID then @ExchangeDate  else B.EXCHDATE  end,   TIME1 = case  when @CheckBookCurrencyID = @vFUNLCURR then @Time  when B.CURNCYID = @CheckBookCurrencyID then @Time  else B.TIME1  end,   RTCLCMTD = case  when @CheckBookCurrencyID = @vFUNLCURR then @nRateCalcMethod  when B.CURNCYID = @CheckBookCurrencyID then @nRateCalcMethod  else B.RTCLCMTD  end,    EXPNDATE = case  when @CheckBookCurrencyID = @vFUNLCURR then @ExpirationDate   when B.CURNCYID = @CheckBookCurrencyID then @ExpirationDate  else B.EXPNDATE  end,   RLGANLOS=case when @I_sMCReg=0 then 0   when @ExchangeRate = 0.0 then 0  when @ExchangeRate = B.Receiving_Exchange_Rate then 0  when B.CURNCYID <> @vFUNLCURR then dbo.mcFuncCalculateAmount(@RateCalcMethod_GainLoss,4,@ExchangeRate_GainLoss,@DenominationExchangeRate_GainLoss,@MCTransactionState_GainLoss,@FuncDecPlaces,B.ORIGAMT) - dbo.mcFuncCalculateAmount(@RateCalcMethod_GainLoss,4,B.Receiving_Exchange_Rate,B.DENXRATE,@MCTransactionState_GainLoss,@FuncDecPlaces,B.ORIGAMT)   else 0 end,  B.CURNCYID,  B.CURRNIDX,   DECPLCUR ,  B.ORIGAMT,   DENXRATE = case  when @I_sMCReg = 0 then 0.0   when B.CURNCYID <> @vFUNLCURR and @MCTransactionState <> 6 then @DenominationExchangeRate  else B.DENXRATE  end,   B.MCTRXSTT   FROM CM20300 B  where  (B.depositnumber = '' or B.depositnumber = @DepositNumber ) and  B.VOIDED = 0 and B.RCRDSTTS <> 20 and B.CHEKBKID = @CheckbookID and   B.CURNCYID = @CurrencyID and ((@RcpType <> 1 and B.RcpType =   case  when @RcpType = 2 then 1  when @RcpType = 3 then 2  when @RcpType = 4 then 3 end ) or (@RcpType = 1 and B.RcpType <> 0))  and B.receiptdate between @StartDate and @EndDate  exec ('delete from ' + @sTableName  + ' where CMRECNUM IN (select CMRECNUM from CM20300 where VOIDED = 1 and CHEKBKID = ''' + @CheckbookID + ''' and CURNCYID = ''' + @CurrencyID + ''')') exec ('delete from ' + @sTableName  + ' where CMRECNUM IN (select CMRECNUM from CM20300 where RCRDSTTS = 20)')  exec ('delete from ' + @sTableName  + ' where CMRECNUM not IN (select CMRECNUM from CM20300)')  exec ('delete from ' + @sTableName  + ' where CMRECNUM IN (select CMRECNUM from #CMDifTemp)')  exec(' Insert into ' + @sTableName +  ' select * from #CMDifTemp ')  select @SQLString='', @ParamDef='' select @SQLString = 'select @Count = count(*),@Total = ISNULL(sum(ORIGAMT),0) from ' + @sTableName + ' where CURNCYID = @CurID and MARKED = 1' select @ParamDef = '@CurID char(15), @Count smallint OUTPUT, @Total numeric(19,5) OUTPUT'  EXECUTE sp_executesql   @SQLString,   @ParamDef,   @CurID=@CurrencyID,   @Count=@RcptCount OUTPUT,  @Total=@RcptAmtTotal OUTPUT  select @SQLString='', @ParamDef='' select @SQLString = 'select @Count = count(*),@Total = ISNULL(sum(ORIGAMT),0) from ' + @sTableName + ' where CURNCYID = @CurID and RcpType = 1 and MARKED = 1' select @ParamDef = '@CurID char(15), @Count smallint OUTPUT, @Total numeric(19,5) OUTPUT'  EXECUTE sp_executesql   @SQLString,   @ParamDef,   @CurID=@CurrencyID,   @Count=@RcptCksCount OUTPUT,  @Total=@RcptCksTotal OUTPUT  select @SQLString='', @ParamDef='' select @SQLString = 'select @Count = count(*),@Total = ISNULL(sum(ORIGAMT),0) from ' + @sTableName + ' where CURNCYID = @CurID and RcpType = 2 and MARKED = 1' select @ParamDef = '@CurID char(15), @Count smallint OUTPUT, @Total numeric(19,5) OUTPUT'  EXECUTE sp_executesql   @SQLString,   @ParamDef,   @CurID=@CurrencyID,   @Count=@RcptCashCount OUTPUT,  @Total=@RcptCashTotal OUTPUT  select @SQLString='', @ParamDef='' select @SQLString = 'select @Count = count(*),@Total = ISNULL(sum(ORIGAMT),0) from ' + @sTableName + ' where CURNCYID = @CurID and RcpType = 3 and MARKED = 1' select @ParamDef = '@CurID char(15), @Count smallint OUTPUT, @Total numeric(19,5) OUTPUT'  EXECUTE sp_executesql   @SQLString,   @ParamDef,   @CurID=@CurrencyID,   @Count=@RcptCCardCount OUTPUT,  @Total=@RcptCCardTotal OUTPUT    
GO
GRANT EXECUTE ON  [dbo].[cmCreateDepositEntryTempTable] TO [DYNGRP]
GO