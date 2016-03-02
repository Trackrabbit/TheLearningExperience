SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmHATBLoadDexTempTables]  @I_cCustomerTemp char(25)        = NULL,  @I_cDocumentTemp char(25)        = NULL,  @I_cApplyTemp char(25)        = NULL,  @I_cCustListTemp char(25) = NULL,  @I_sCustomerSort smallint = NULL,  @I_sDocumentSort smallint = NULL,  @I_sIncludeBalanceTypes smallint = NULL,  @I_cStartCustomerNumber char(32) = NULL,  @I_cEndCustomerNumber char(32) = NULL,  @I_cStartCustomerName char(132) = NULL,  @I_cEndCustomerName char(132) = NULL,  @I_cStartClassID char(32) = NULL,  @I_cEndClassID char(32) = NULL,  @I_cStartSalesPersonID char(32) = NULL,  @I_cEndSalesPersonID char(32) = NULL,  @I_cStartSalesTerritory char(32) = NULL,  @I_cEndSalesTerritory char(32) = NULL,  @I_cStartShortName char(32) = NULL,  @I_cEndShortName char(32) = NULL,  @I_cStartState char(12) = NULL,  @I_cEndState char(12) = NULL,  @I_cStartZipCode char(24) = NULL,  @I_cEndZipCode char(24) = NULL,  @I_cStartPhoneNumber char(44) = NULL,  @I_cEndPhoneNumber char(44) = NULL,  @I_cStartUserDefined char(32) = NULL,  @I_cEndUserDefined char(32) = NULL,  @I_tExcludeNoActivity tinyint  = NULL,  @I_tExcludeZeroBalanceCust tinyint  = NULL,  @I_tExcludeFullyPaidTrxs tinyint  = NULL,  @I_tExcludeCreditBalanceCust tinyint  = NULL,  @I_tExcludeMultiCurrency tinyint  = NULL,  @I_tConsolidateNAActivity tinyint  = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE smallint,  @FALSE smallint,  @vExcludeFullyPaid varchar(255),  @vFromTableClause varchar(255),  @cExecStringDocSort char(1),  @cExecStringCustSort char(2),  @cExecStringIncBalType char(1),  @cExecStringExclMC char(1),  @cExecConsolNAActivity char(1),  @cDBName char(5),  @BBF char(3),  @tLoopControl           tinyint,  @iStatus                int,  @iError                 int,  @dMinDate datetime,  @cMinDate char(12)  select @iStatus = 0,  @O_iErrorState = 0  select  @TRUE  = 1,  @FALSE = 0  exec @iStatus = smGetMinDate @dMinDate output  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_cCustomerTemp is NULL or  @I_cDocumentTemp is NULL or  @I_cApplyTemp is NULL or  @I_sDocumentSort is NULL or  @I_cStartCustomerNumber is NULL or  @I_cEndCustomerNumber is NULL or  @I_cStartCustomerName is NULL or  @I_cEndCustomerName is NULL or  @I_cStartClassID is NULL or  @I_cEndClassID is NULL or  @I_cStartSalesPersonID is NULL or  @I_cEndSalesPersonID is NULL or  @I_cStartSalesTerritory is NULL or  @I_cEndSalesTerritory is NULL or  @I_cStartShortName is NULL or  @I_cEndShortName is NULL or  @I_cStartState is NULL or  @I_cEndState is NULL or  @I_cStartZipCode is NULL or  @I_cEndZipCode is NULL or  @I_cStartPhoneNumber is NULL or  @I_cEndPhoneNumber is NULL or  @I_cStartUserDefined is NULL or  @I_cEndUserDefined is NULL or  @I_tExcludeNoActivity is NULL or  @I_tExcludeZeroBalanceCust is NULL or  @I_tExcludeFullyPaidTrxs is NULL or  @I_tExcludeCreditBalanceCust is NULL or  @I_tConsolidateNAActivity is NULL  begin  select @O_iErrorState = 20975  break  end    select @cDBName = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  12030,  @cDBName,  @BBF output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec('drop index ' + @I_cDocumentTemp + '.AK1' + @I_cDocumentTemp)   exec('drop index ' + @I_cDocumentTemp + '.AK2' + @I_cDocumentTemp)   if exists (SELECT id FROM sysobjects WHERE id = OBJECT_ID(N'tempdb..PK' + @I_cApplyTemp, N'PK'))  exec('ALTER TABLE ' + @I_cApplyTemp + ' DROP CONSTRAINT PK' + @I_cApplyTemp)   select @cExecStringDocSort = convert(char(1),@I_sDocumentSort)  select @cExecConsolNAActivity = convert(char(1),@I_tConsolidateNAActivity)  select @cExecStringExclMC = convert(char(1),@I_tExcludeMultiCurrency)   if @I_tExcludeFullyPaidTrxs = @TRUE  select @vExcludeFullyPaid = ' where (A.CurrentTrxAmount <> 0.00) or (A.CustomerType = 1)'  else  select @vExcludeFullyPaid = ''   select @cExecStringIncBalType = convert(char(1),@I_sIncludeBalanceTypes)  select @cExecStringCustSort = convert(char(2),@I_sCustomerSort)  select @cMinDate = '''' + convert(char(10),@dMinDate,102) + ''''   if (@I_tExcludeNoActivity = @TRUE) or (@I_tExcludeZeroBalanceCust = @TRUE)  begin  if @I_cCustListTemp = ''  select @vFromTableClause = ' RM00101 A JOIN #TransactionTEMP B ON (B.CustomerNumber = A.CUSTNMBR)'  else  select @vFromTableClause = @I_cCustListTemp + ' A JOIN #TransactionTEMP B ON (B.CustomerNumber = A.CUSTNMBR)'   exec('insert into ' +   @I_cCustomerTemp + '  select distinct  A.CUSTNMBR,  case   WHEN (' + @cExecStringCustSort + ' = 1) THEN  A.CUSTNMBR  WHEN (' + @cExecStringCustSort + ' = 2) THEN  CUSTNAME  WHEN (' + @cExecStringCustSort + ' = 3) THEN  CUSTCLAS  WHEN (' + @cExecStringCustSort + ' = 4) THEN  USERDEF1  WHEN (' + @cExecStringCustSort + ' = 5) THEN  SLPRSNID  WHEN (' + @cExecStringCustSort + ' = 6) THEN  SALSTERR  WHEN (' + @cExecStringCustSort + ' = 7) THEN  SHRTNAME  WHEN (' + @cExecStringCustSort + ' = 8) THEN  STATE  WHEN (' + @cExecStringCustSort + ' = 9) THEN  ZIP  WHEN (' + @cExecStringCustSort + ' = 10) THEN  PHONE1  ELSE  A.CUSTNMBR  end,  ' + @cMinDate + '  from  ' + @vFromTableClause + '  where  A.CUSTNMBR >= ' + @I_cStartCustomerNumber + '  and A.CUSTNMBR <= ' + @I_cEndCustomerNumber + '  and CUSTNAME >= ' + @I_cStartCustomerName + '  and CUSTNAME <= ' + @I_cEndCustomerName + '  and CUSTCLAS >= ' + @I_cStartClassID + '  and CUSTCLAS <= ' + @I_cEndClassID + '  and SLPRSNID >= ' + @I_cStartSalesPersonID + '  and SLPRSNID <= ' + @I_cEndSalesPersonID + '  and SALSTERR >= ' + @I_cStartSalesTerritory + '   and SALSTERR <= ' + @I_cEndSalesTerritory + '  and SHRTNAME >= ' + @I_cStartShortName + '   and SHRTNAME <= ' + @I_cEndShortName + '  and STATE >= ' + @I_cStartState + '   and STATE <= ' + @I_cEndState + '  and ZIP >= ' + @I_cStartZipCode + '   and ZIP <= ' + @I_cEndZipCode + '  and PHONE1 >= ' + @I_cStartPhoneNumber + '   and PHONE1 <= ' + @I_cEndPhoneNumber + '  and USERDEF1 >= ' + @I_cStartUserDefined + '   and USERDEF1 <= ' + @I_cEndUserDefined + '  and ((' + @cExecConsolNAActivity + ' = 0)  or (' + @cExecConsolNAActivity + ' = 1  and (CPRCSTNM = CUSTNMBR or CPRCSTNM = '''' )))  and ((' + @cExecStringIncBalType + ' = 0)  or (' + @cExecStringIncBalType + ' = 1 and BALNCTYP = 0)  or (' + @cExecStringIncBalType + ' = 2 and BALNCTYP = 1)) ')  end   ELSE  begin  if @I_cCustListTemp = ''  select @vFromTableClause = ' RM00101 '  else  select @vFromTableClause = @I_cCustListTemp  exec('insert into ' +   @I_cCustomerTemp + '  select  CUSTNMBR,  case   WHEN (' + @cExecStringCustSort + ' = 1) THEN  CUSTNMBR  WHEN (' + @cExecStringCustSort + ' = 2) THEN  CUSTNAME  WHEN (' + @cExecStringCustSort + ' = 3) THEN  CUSTCLAS  WHEN (' + @cExecStringCustSort + ' = 4) THEN  USERDEF1  WHEN (' + @cExecStringCustSort + ' = 5) THEN  SLPRSNID  WHEN (' + @cExecStringCustSort + ' = 6) THEN  SALSTERR  WHEN (' + @cExecStringCustSort + ' = 7) THEN  SHRTNAME  WHEN (' + @cExecStringCustSort + ' = 8) THEN  STATE  WHEN (' + @cExecStringCustSort + ' = 9) THEN  ZIP  WHEN (' + @cExecStringCustSort + ' = 10) THEN  PHONE1  ELSE  CUSTNMBR  end,  ' + @cMinDate + '  from  ' + @vFromTableClause + '  where  CUSTNMBR >= ' + @I_cStartCustomerNumber + '  and CUSTNMBR <= ' + @I_cEndCustomerNumber + '  and CUSTNAME >= ' + @I_cStartCustomerName + '  and CUSTNAME <= ' + @I_cEndCustomerName + '  and CUSTCLAS >= ' + @I_cStartClassID + '  and CUSTCLAS <= ' + @I_cEndClassID + '  and SLPRSNID >= ' + @I_cStartSalesPersonID + '  and SLPRSNID <= ' + @I_cEndSalesPersonID + '  and SALSTERR >= ' + @I_cStartSalesTerritory + '   and SALSTERR <= ' + @I_cEndSalesTerritory + '  and SHRTNAME >= ' + @I_cStartShortName + '   and SHRTNAME <= ' + @I_cEndShortName + '  and STATE >= ' + @I_cStartState + '   and STATE <= ' + @I_cEndState + '  and ZIP >= ' + @I_cStartZipCode + '   and ZIP <= ' + @I_cEndZipCode + '  and PHONE1 >= ' + @I_cStartPhoneNumber + '   and PHONE1 <= ' + @I_cEndPhoneNumber + '  and USERDEF1 >= ' + @I_cStartUserDefined + '   and USERDEF1 <= ' + @I_cEndUserDefined + '  and ((' + @cExecConsolNAActivity + ' = 0)  or (' + @cExecConsolNAActivity + ' = 1  and (CPRCSTNM = CUSTNMBR or CPRCSTNM = '''' )))  and ((' + @cExecStringIncBalType + ' = 0)  or (' + @cExecStringIncBalType + ' = 1 and BALNCTYP = 0)  or (' + @cExecStringIncBalType + ' = 2 and BALNCTYP = 1)) ')  end   if (@I_tExcludeZeroBalanceCust = @TRUE and @I_tExcludeCreditBalanceCust = @TRUE)  begin  exec('delete ' +  @I_cCustomerTemp + '  where   EXISTS(select  1  from  #TransactionTEMP B   where  ' + @I_cCustomerTemp + '.CUSTNMBR = B.CustomerNumber  GROUP BY  B.CustomerNumber   HAVING  ISNULL(sum(case WHEN (CustomerType = 0) THEN  CurrentTrxAmount  ELSE  case WHEN (RMDocumentTypeAll < 7) THEN  (OriginalTrxAmount + RevalDocAmountAdj)  ELSE   -(OriginalTrxAmount + RevalDocAmountAdj)  end  end),0.00) <= 0.00)')  end   else if @I_tExcludeZeroBalanceCust = @TRUE  begin  exec('delete ' +  @I_cCustomerTemp + '  where   EXISTS(select  1  from  #TransactionTEMP B   where  ' + @I_cCustomerTemp + '.CUSTNMBR = B.CustomerNumber  GROUP BY  B.CustomerNumber   HAVING  ISNULL(sum(case WHEN (CustomerType = 0) THEN  CurrentTrxAmount  ELSE  case WHEN (RMDocumentTypeAll < 7) THEN  (OriginalTrxAmount + RevalDocAmountAdj)  ELSE   -(OriginalTrxAmount + RevalDocAmountAdj)  end  end),0.00) = 0.00)')  end   else if @I_tExcludeCreditBalanceCust = @TRUE  begin  exec('delete ' +  @I_cCustomerTemp + '  where   EXISTS(select  1  from  #TransactionTEMP B   where  ' + @I_cCustomerTemp + '.CUSTNMBR = B.CustomerNumber  GROUP BY  B.CustomerNumber   HAVING  ISNULL(sum(case WHEN (CustomerType = 0) THEN  CurrentTrxAmount  ELSE  case WHEN (RMDocumentTypeAll < 7) THEN  (OriginalTrxAmount + RevalDocAmountAdj)  ELSE   -(OriginalTrxAmount + RevalDocAmountAdj)  end  end),0.00) < 0.00)')  end   exec('insert into ' +   @I_cApplyTemp + '  select  DocumentNumber,  RMDocumentTypeAll,  CurrencyID,   ApplyToDocumentNumber,  ApplyToDocumentTypeAll,  -AppliedAmount,  CurrencyID,  DocumentDate,  Posted,  DiscountTakenAmount,  WriteoffAmount,  PPSAmount,  GSTDiscountAmount,  CurrencyIndex,  ExchangeRate,  RealizedGainLossAmount,  -OrigAppliedAmount,  OrigDiscTakenAmount,  OrigWriteoffAmount,  DenominationExchangeRate,  MCTransactionState  from  #AppliedTEMP')   drop table #AppliedTEMP   exec('insert into ' +   @I_cDocumentTemp + '  select  CustomerNumber,  ChildCustomerNumber,  DocumentNumber,  RMDocumentTypeAll,  case   WHEN RMDocumentTypeAll = 0 THEN  ''''  WHEN (' + @cExecStringDocSort + ' = 1) THEN  rtrim(DocumentNumber) + cast(RMDocumentTypeAll as char(1))  WHEN (' + @cExecStringDocSort + ' = 2) THEN  convert(char(10),DocumentDate,102) + DocumentNumber  ELSE  convert(char(10),DueDate,102) + DocumentNumber  end,  case  WHEN (' + @cExecStringExclMC + ' = 1) THEN  ''''  ELSE  CurrencyID  end,  case   WHEN (RMDocumentTypeAll < 7) THEN  OriginalTrxAmount  ELSE  -OriginalTrxAmount  end,  case   WHEN (CustomerType = 0) THEN   CurrentTrxAmount  ELSE    case  WHEN (RMDocumentTypeAll < 7) THEN    (OriginalTrxAmount + RevalDocAmountAdj)  ELSE -(OriginalTrxAmount + RevalDocAmountAdj)  end  end,  AgingPeriod,  CashAmount,  CommissionDollarAmount,  SalesAmount,  CostAmount,  FreightAmount,  MiscAmount,  TaxAmount,  (DiscountAvailableAmount - RevalDiscAmountAvailAdj),  case  WHEN (RMDocumentTypeAll < 7)   THEN -DiscountTakenAmount  ELSE 0.00  end,  case  WHEN (RMDocumentTypeAll < 7)   THEN -WriteoffAmount  ELSE 0.00  end,  TransactionDescription,  case  WHEN (RMDocumentTypeAll > 0)  THEN B.DOCABREV  ELSE ''' + @BBF + '''   end,  CheckNumber,  DocumentDate,  DueDate,  GLPostingDate,  DiscountDate,  PostDate,  DateInvoicePaidOff,  CurrencyIndex,  ExchangeRate,  OrigCashAmount,  OrigSalesAmount,  OrigCostAmount,  OrigDiscAvailableAmount,  OrigFreightAmount,  OrigMiscAmount,  OrigTaxAmount,  case   WHEN (CustomerType = 0) THEN   OrigCurrentTrxAmount  ELSE   case  WHEN (RMDocumentTypeAll < 7) THEN    OrigOriginalTrxAmount - OrigDiscTakenAmount  ELSE - OrigCurrentTrxAmount  end  end,  case  WHEN (RMDocumentTypeAll < 7)   THEN OrigOriginalTrxAmount  ELSE (-OrigOriginalTrxAmount)  end,  case  WHEN (RMDocumentTypeAll < 7)   THEN -OrigDiscTakenAmount  ELSE 0.00  end,  case  WHEN (RMDocumentTypeAll < 7)   THEN -OrigWriteoffAmount  ELSE 0.00  end,  DenominationExchangeRate,  MCTransactionState,  case   WHEN (CustomerType = 0) THEN   case  WHEN (RMDocumentTypeAll < 7) THEN    (OriginalTrxAmount + RevalDocAmountAdj - DiscountTakenAmount - WriteoffAmount + OrigApplyToRndAmt)  ELSE  CurrentTrxAmount  end  ELSE    case  WHEN (RMDocumentTypeAll < 7) THEN    (OriginalTrxAmount + RevalDocAmountAdj - DiscountTakenAmount)  ELSE  - CurrentTrxAmount  end  end  from  #TransactionTEMP A  LEFT OUTER JOIN RM40401 B with (NOLOCK) ON A.RMDocumentTypeAll = B.RMDTYPAL '  + @vExcludeFullyPaid )   drop table #TransactionTEMP   if (@I_tExcludeZeroBalanceCust = @TRUE or @I_tExcludeCreditBalanceCust = @TRUE) and (@I_tExcludeMultiCurrency = @FALSE)  begin  exec('delete ' +  @I_cDocumentTemp + '  where  NOT EXISTS(  select  1  from ' +  @I_cCustomerTemp + ' A  where  A.CUSTNMBR =  ' + @I_cDocumentTemp + '.CUSTNMBR)')  end  end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[rmHATBLoadDexTempTables] TO [DYNGRP]
GO
