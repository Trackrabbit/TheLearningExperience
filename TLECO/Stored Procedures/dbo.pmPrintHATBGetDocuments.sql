SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[pmPrintHATBGetDocuments]  @I_dAgingDate datetime = NULL,  @I_cStartVendorID               char(15)        = NULL,  @I_cEndVendorID          char(15)        = NULL,  @I_cStartVendorName             char(65)        = NULL,  @I_cEndVendorName               char(65)        = NULL,  @I_cStartClassID                char(15)        = NULL,  @I_cEndClassID                  char(15)        = NULL,  @I_cStartUserDefined     char(15)        = NULL,  @I_cEndUserDefined              char(15)        = NULL,  @I_cStartPaymentPriority        char(3)  = NULL,  @I_cEndPaymentPriority   char(3)  = NULL,  @I_cStartDocumentNumber char(21) = NULL,  @I_cEndDocumentNumber char(21) = NULL,  @I_tUsingDocumentDate tinyint  = NULL,  @I_dStartDate datetime = NULL,  @I_dEndDate datetime = NULL,  @I_tExcludeMultiCurrency tinyint  = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_sPrintCurrencyIn smallint = NULL,  @I_nReportingExchangeRate numeric(15,7) = NULL,  @I_sReportingRateCalcMethod smallint = NULL,  @I_sReportingDecimalPlaces smallint = NULL,  @I_cVendorListTemp char(40) = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE smallint,  @FALSE smallint,  @REPORTING smallint,  @PMDOCTYPERETURN char(1),  @sAgeByDocDate smallint,  @sNumOfPeriods smallint,  @cStartVendorID char(32),  @cEndVendorID char(32),  @cStartVendorName char(132),  @cEndVendorName char(132),  @cStartClassID char(32),  @cEndClassID char(32),  @cStartUserDefined char(32),  @cEndUserDefined char(32),  @cStartPaymentPriority char(8),  @cEndPaymentPriority char(8),  @cStartDocumentNumber char(42),  @cEndDocumentNumber char(42),  @vRestrictDate varchar(255),  @vRestrictVoid varchar(255),  @vAgingDate varchar(255),  @vRestrictVendorID varchar(255),  @vRestrictVendorName varchar(255),  @vRestrictClassID varchar(255),  @vRestrictUserDefined varchar(255),  @vRestrictPayPriority varchar(255),  @vRestrictDocNumber varchar(255),  @vJoinVendorListTemp varchar(255),  @cStringStartDate char(12),  @cStringEndDate char(12),  @cStringAgingDate char(12),  @cPrintCurrencyIn char(1),  @cMCRegistered char(1),  @cReportingExchangeRate char(20),  @cReportingRateCalcMethod char(1),  @cReportingDecimalPlaces char(1),  @tLoopControl           tinyint,  @iStatus                int,  @iError                 int,  @dMinDate datetime,  @tAgeUnappliedCredit tinyint  create table #PeriodDates (  PERIODID  int   not null,  BALANCETYPE tinyint not null,  STARTDATE datetime not null,  ENDDATE datetime not null)  select  @iStatus = 0,  @O_iErrorState = 0  select  @TRUE  = 1,  @FALSE = 0,  @REPORTING = 1,  @PMDOCTYPERETURN = '4'  exec @iStatus = smGetMinDate @dMinDate output  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_dAgingDate is NULL or  @I_cStartVendorID               is NULL or  @I_cEndVendorID          is NULL or  @I_cStartVendorName             is NULL or  @I_cEndVendorName               is NULL or  @I_cStartClassID                is NULL or  @I_cEndClassID                  is NULL or  @I_cStartUserDefined     is NULL or  @I_cEndUserDefined              is NULL or  @I_cStartPaymentPriority        is NULL or  @I_cEndPaymentPriority   is NULL or  @I_cStartDocumentNumber is NULL or  @I_cEndDocumentNumber is NULL or  @I_tUsingDocumentDate is NULL or  @I_dStartDate is NULL or  @I_dEndDate is NULL or  @I_tExcludeMultiCurrency is NULL or  @I_cFunctionalCurrency is NULL or  @I_tMCRegistered is NULL or  @I_sPrintCurrencyIn is NULL or  @I_nReportingExchangeRate is NULL or  @I_sReportingRateCalcMethod is NULL or  @I_sReportingDecimalPlaces is NULL or  @I_cVendorListTemp is NULL  begin  select @O_iErrorState = 20959  break  end    Exec @iStatus = smFormatStringsForExecs  @I_cStartVendorID,  @cStartVendorID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndVendorID,  @cEndVendorID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartVendorName,  @cStartVendorName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndVendorName,  @cEndVendorName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartClassID,  @cStartClassID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndClassID,  @cEndClassID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartUserDefined,  @cStartUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndUserDefined,  @cEndUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartPaymentPriority,  @cStartPaymentPriority output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndPaymentPriority,  @cEndPaymentPriority output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartDocumentNumber,  @cStartDocumentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndDocumentNumber,  @cEndDocumentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select  @sAgeByDocDate = AGEBY,  @tAgeUnappliedCredit = AGEUNAPPLDCR  from  PM40100 with (NOLOCK)  where   UNIQKEY = '1'   select @sNumOfPeriods = INDEX1 from PM40101 where ENDGPDYS = 999   insert into  #PeriodDates  select  INDEX1,  0,    '',   dateadd(dd,-ENDGPDYS,@I_dAgingDate)   from  PM40101 with (NOLOCK)  where  INDEX1 < @sNumOfPeriods   insert into  #PeriodDates  values( @sNumOfPeriods,  0,    '',   @dMinDate )   select @cMCRegistered = convert(char(1),@I_tMCRegistered)  select @cPrintCurrencyIn = convert(char(1),@I_sPrintCurrencyIn)  select @cReportingExchangeRate = convert(char(20),@I_nReportingExchangeRate)  select @cReportingRateCalcMethod = convert(char(1),@I_sReportingRateCalcMethod)  select @cReportingDecimalPlaces = convert(char(1),@I_sReportingDecimalPlaces)   select @cStringStartDate = '''' + convert(char(10),@I_dStartDate,102) + ''''  select @cStringEndDate = '''' + convert(char(10),@I_dEndDate,102) + ''''  select @cStringAgingDate = '''' + convert(char(10),@I_dAgingDate,102) + ''''   if @I_cVendorListTemp = ''  begin  select @vRestrictVendorID = ' B.VENDORID BETWEEN ' + @cStartVendorID + ' and ' + @cEndVendorID  select @vJoinVendorListTemp = ' '  end  else  begin  select @vRestrictVendorID = ' B.VENDORID = L.VENDORID '  select @vJoinVendorListTemp = ' JOIN ' + @I_cVendorListTemp + ' L ON B.VENDORID = L.VENDORID '  end  select @vRestrictVendorName = ' and B.VENDNAME BETWEEN ' + @cStartVendorName + ' and ' + @cEndVendorName  select @vRestrictClassID = ' and B.VNDCLSID BETWEEN ' + @cStartClassID + ' and ' + @cEndClassID  select @vRestrictUserDefined = ' and B.USERDEF1 BETWEEN ' + @cStartUserDefined + ' and ' + @cEndUserDefined  select @vRestrictPayPriority = ' and B.PYMNTPRI BETWEEN ' + @cStartPaymentPriority + ' and ' + @cEndPaymentPriority  select @vRestrictDocNumber = ' and A.DOCNUMBR BETWEEN ' + @cStartDocumentNumber + ' and ' + @cEndDocumentNumber   if @sAgeByDocDate = 1  select @vAgingDate = 'isnull((select min(PERIODID) from #PeriodDates where ENDDATE <= A.DOCDATE),1)'  else  begin  select @vAgingDate = 'case WHEN A.DOCTYPE >= ' + @PMDOCTYPERETURN + ' AND ' + convert(char(1),@tAgeUnappliedCredit) + ' = 1 then isnull((select min(PERIODID) from #PeriodDates where ENDDATE <= A.DOCDATE),1)'  select @vAgingDate = @vAgingDate + '  WHEN A.DUEDATE = ''' + convert(char(10),@dMinDate,102) + ''' then 1 ELSE isnull((select min(PERIODID) from #PeriodDates where ENDDATE <= A.DUEDATE),1) end'  end   if @I_tUsingDocumentDate = 1  begin  select @vRestrictDate = ' and A.DOCDATE BETWEEN' + @cStringStartDate + ' and ' + @cStringEndDate  select @vRestrictVoid = ' and ((VOIDED = 1 and DINVPDOF > ' + @cStringEndDate + ') or VOIDED = 0)'  end   else  begin  select @vRestrictDate = ' and (not A.PSTGDATE = ''' + convert(char(10),@dMinDate, 102) + ''') and A.PSTGDATE BETWEEN' + @cStringStartDate + ' and ' + @cStringEndDate  select @vRestrictVoid = ' and ((VOIDED = 1 and VOIDPDATE > ' + @cStringEndDate + ') or VOIDED = 0)'  end   if @I_tExcludeMultiCurrency = @TRUE  begin  exec('insert into  #DocumentTEMP  select  A.VENDORID, A.VCHRNMBR, A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.CURTRXAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.CURTRXAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.CURTRXAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DOCAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DOCAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DOCAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cStringAgingDate + ' <= A.DISCDATE then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISAMTAV * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISAMTAV / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISAMTAV  end  ELSE  0.00  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.TTLPYMTS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.TTLPYMTS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.TTLPYMTS  end,  (case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((C.Total_Gain_or_Loss_on_Cu  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((C.Total_Gain_or_Loss_on_Cu  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(C.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00   end),   (case WHEN (A.DOCTYPE < ' + @PMDOCTYPERETURN + ') and (' + @cStringAgingDate + ' <= A.DISCDATE) then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  -1 * (ISNULL(ROUND((-1 * C.Total_Gain_or_Loss_on_Di * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  else  -1 * (ISNULL(ROUND((-1 * C.Total_Gain_or_Loss_on_Di / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  end  ELSE  -1 * ISNULL((C.Total_Gain_or_Loss_on_Di),0.00)  end  ELSE  0.00  end),  (case WHEN A.DOCTYPE >= ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((- C.Total_Gain_or_Loss_on_Cu * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((- C.Total_Gain_or_Loss_on_Cu / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(- C.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  0.00,  0.00,   A.DOCDATE,A.DUEDATE,A.DISCDATE,A.PSTGDATE,A.DOCNUMBR,A.TRXSORCE,A.CURNCYID,0,  0.00,0.00,0,0.00,0.00,0.00,0.00,0.00,0.00,1,' + @vAgingDate + '   from  PM20000 A with (NOLOCK)   JOIN PM00200 B with (NOLOCK)   ON (A.VENDORID = B.VENDORID) ' + @vJoinVendorListTemp + '  LEFT OUTER JOIN MC020105 C with (NOLOCK)  ON A.CURNCYID = C.CURNCYID  and A.VCHRNMBR = C.VCHRNMBR  and A.DOCTYPE  = C.DOCTYPE  and  convert(char(10), C.RVLUDATE, 102) + convert(char(10), C.SEQNUMBR)  = (select max(convert(char(10), MC020105.RVLUDATE, 102) + convert(char(10), MC020105.SEQNUMBR))  from  MC020105 with (NOLOCK)  where  MC020105.CURNCYID = A.CURNCYID  and  MC020105.VCHRNMBR = A.VCHRNMBR  and  MC020105.DOCTYPE  = A.DOCTYPE  and MC020105.RVLUDATE <= ' + @cStringEndDate + ')   where '  + @vRestrictVendorID + @vRestrictVendorName + @vRestrictClassID  + @vRestrictUserDefined + @vRestrictPayPriority + @vRestrictDocNumber  + @vRestrictDate )   exec('insert into  #DocumentTEMP  select  A.VENDORID, A.VCHRNMBR, A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.CURTRXAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.CURTRXAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.CURTRXAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DOCAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DOCAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DOCAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cStringAgingDate + ' <= A.DISCDATE then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISAMTAV * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISAMTAV / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISAMTAV  end  ELSE  0.00  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.TTLPYMTS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.TTLPYMTS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.TTLPYMTS  end,  (case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((C.Total_Gain_or_Loss_on_Cu  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((C.Total_Gain_or_Loss_on_Cu  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(C.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  (case WHEN (A.DOCTYPE < ' + @PMDOCTYPERETURN + ') and (' + @cStringAgingDate + ' <= A.DISCDATE) then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  -1 * (ISNULL(ROUND((C.Total_Gain_or_Loss_on_Di * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  else  -1 * (ISNULL(ROUND((C.Total_Gain_or_Loss_on_Di / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  end  ELSE  -1 * (ISNULL(C.Total_Gain_or_Loss_on_Di,0.00))  end  ELSE  0.00  end),  (case WHEN A.DOCTYPE >= ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((- C.Total_Gain_or_Loss_on_Cu * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((- C.Total_Gain_or_Loss_on_Cu / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(- C.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  (case WHEN ' + @cStringAgingDate + ' > C.RevalPostDate then  case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((C.SettledGainLossCurTrxAmt  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((C.SettledGainLossCurTrxAmt  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(C.SettledGainLossCurTrxAmt,0.00)  end  ELSE  0.00   end  ELSE  0.00  end),  (case WHEN ' + @cStringAgingDate + ' > C.RevalPostDate then  case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((C.SettledGainLossDiscAvlAm * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((C.SettledGainLossDiscAvlAm  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(C.SettledGainLossDiscAvlAm,0.00)  end  ELSE  0.00   end  ELSE  0.00  end),   A.DOCDATE,A.DUEDATE,A.DISCDATE,A.PSTGDATE,A.DOCNUMBR,A.TRXSORCE,A.CURNCYID,  0,0.00,0.00,0,0.00,0.00,0.00,0.00,0.00,0.00,0,' + @vAgingDate + '   from  PM30200 A with (NOLOCK)   JOIN PM00200 B with (NOLOCK)  ON (A.VENDORID = B.VENDORID) ' + @vJoinVendorListTemp + '  LEFT OUTER JOIN MC020105 C with (NOLOCK)  ON A.CURNCYID = C.CURNCYID  and A.VCHRNMBR = C.VCHRNMBR  and A.DOCTYPE  = C.DOCTYPE  and  convert(char(10), C.RVLUDATE, 102) + convert(char(10), C.SEQNUMBR)  = (select max(convert(char(10), MC020105.RVLUDATE, 102) + convert(char(10), MC020105.SEQNUMBR))  from  MC020105 with (NOLOCK)  where  MC020105.CURNCYID = A.CURNCYID  and  MC020105.VCHRNMBR = A.VCHRNMBR  and  MC020105.DOCTYPE  = A.DOCTYPE  and MC020105.RVLUDATE <= ' + @cStringEndDate + ')   where '  + @vRestrictVendorID + @vRestrictVendorName + @vRestrictClassID  + @vRestrictUserDefined + @vRestrictPayPriority + @vRestrictDocNumber  + @vRestrictDate + @vRestrictVoid)  end    else if @I_tExcludeMultiCurrency = @FALSE   begin   exec('insert into  #DocumentTEMP  select  A.VENDORID,A.VCHRNMBR,A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.CURTRXAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.CURTRXAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.CURTRXAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DOCAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DOCAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DOCAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cStringAgingDate + ' <= A.DISCDATE then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISAMTAV * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISAMTAV / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISAMTAV  end  ELSE  0.00  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end   ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.TTLPYMTS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.TTLPYMTS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.TTLPYMTS  end,  (case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((D.Total_Gain_or_Loss_on_Cu  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((D.Total_Gain_or_Loss_on_Cu  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(D.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  (case WHEN (A.DOCTYPE < ' + @PMDOCTYPERETURN + ') and (' + @cStringAgingDate + ' <= A.DISCDATE) then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  -1 * (ISNULL(ROUND((D.Total_Gain_or_Loss_on_Di * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  else  -1 * (ISNULL(ROUND((D.Total_Gain_or_Loss_on_Di / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  end  ELSE  -1 * (ISNULL(D.Total_Gain_or_Loss_on_Di,0.00))  end  ELSE  0.00  end),  (case WHEN A.DOCTYPE >= ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((- D.Total_Gain_or_Loss_on_Cu * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((- D.Total_Gain_or_Loss_on_Cu / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(- D.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  0.00,   0.00,   A.DOCDATE,A.DUEDATE,A.DISCDATE,A.PSTGDATE,A.DOCNUMBR,A.TRXSORCE,A.CURNCYID,  ISNULL(C.CURRNIDX,0),  ISNULL(D.XCHGRATE,ISNULL(C.XCHGRATE,0.00)),  ISNULL(D.DENXRATE,ISNULL(C.DENXRATE,0.00)),  ISNULL(D.MCTRXSTT,ISNULL(C.MCTRXSTT,0.00)),  ISNULL(C.ORDOCAMT,0.00),ISNULL(C.ORDISTKN,0.00),  ISNULL(C.ORCTRXAM,0.00),ISNULL(C.ODISAMTAV,0.00),ISNULL(C.ORWROFAM,0.00),  ISNULL(C.OTOTPAY,0.00),1,' + @vAgingDate + '   from  PM20000 A with (NOLOCK)   JOIN PM00200 B with (NOLOCK)  ON (A.VENDORID = B.VENDORID) ' + @vJoinVendorListTemp + '  LEFT OUTER JOIN MC020103 C with (NOLOCK)  ON  A.VCHRNMBR = C.VCHRNMBR   and  A.DOCTYPE = C.DOCTYPE  LEFT OUTER JOIN MC020105 D with (NOLOCK)  ON A.CURNCYID = D.CURNCYID  and A.VCHRNMBR = D.VCHRNMBR  and A.DOCTYPE  = D.DOCTYPE  and  convert(char(10), D.RVLUDATE, 102) + convert(char(10), D.SEQNUMBR)  = (select max(convert(char(10), MC020105.RVLUDATE, 102) + convert(char(10), MC020105.SEQNUMBR))  from  MC020105 with (NOLOCK)  where  MC020105.CURNCYID = A.CURNCYID  and  MC020105.VCHRNMBR = A.VCHRNMBR   and  MC020105.DOCTYPE  = A.DOCTYPE  and MC020105.RVLUDATE <= ' + @cStringEndDate + ')   where '  + @vRestrictVendorID + @vRestrictVendorName + @vRestrictClassID  + @vRestrictUserDefined + @vRestrictPayPriority + @vRestrictDocNumber  + @vRestrictDate )   exec('insert into  #DocumentTEMP   select  A.VENDORID,A.VCHRNMBR,A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.CURTRXAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.CURTRXAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.CURTRXAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DOCAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else   ISNULL(ROUND((A.DOCAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DOCAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cStringAgingDate + ' <= A.DISCDATE then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISAMTAV * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISAMTAV / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISAMTAV  end  ELSE  0.00  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.TTLPYMTS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.TTLPYMTS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.TTLPYMTS  end,  (case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((D.Total_Gain_or_Loss_on_Cu  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((D.Total_Gain_or_Loss_on_Cu  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(D.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  (case WHEN (A.DOCTYPE < ' + @PMDOCTYPERETURN + ') and (' + @cStringAgingDate + ' <= A.DISCDATE) then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  -1 * (ISNULL(ROUND((D.Total_Gain_or_Loss_on_Di * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  else  -1 * (ISNULL(ROUND((D.Total_Gain_or_Loss_on_Di / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00))  end  ELSE  -1 * (ISNULL(D.Total_Gain_or_Loss_on_Di,0.00))  end  ELSE  0.00  end),  (case WHEN A.DOCTYPE >= ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((- D.Total_Gain_or_Loss_on_Cu * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((- D.Total_Gain_or_Loss_on_Cu / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(- D.Total_Gain_or_Loss_on_Cu,0.00)  end  ELSE  0.00  end),  (case WHEN ' + @cStringAgingDate + ' > D.RevalPostDate then  case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((D.SettledGainLossCurTrxAmt  * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((D.SettledGainLossCurTrxAmt  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(D.SettledGainLossCurTrxAmt,0.00)  end  ELSE  0.00   end  ELSE  0.00   end),  (case WHEN ' + @cStringAgingDate + ' > D.RevalPostDate then  case WHEN A.DOCTYPE < ' + @PMDOCTYPERETURN + ' then  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((D.SettledGainLossDiscAvlAm * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((D.SettledGainLossDiscAvlAm  / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  ISNULL(D.SettledGainLossDiscAvlAm,0.00)  end  ELSE  0.00   end  ELSE  0.00   end),  A.DOCDATE,A.DUEDATE,A.DISCDATE,A.PSTGDATE,A.DOCNUMBR,A.TRXSORCE,A.CURNCYID,  ISNULL(C.CURRNIDX,0),  ISNULL(D.XCHGRATE,ISNULL(C.XCHGRATE,0.00)),  ISNULL(D.DENXRATE,ISNULL(C.DENXRATE,0.00)),  ISNULL(D.MCTRXSTT,ISNULL(C.MCTRXSTT,0.00)),  ISNULL(C.ORDOCAMT,0.00),ISNULL(C.ORDISTKN,0.00),  ISNULL(C.ORCTRXAM,0.00),ISNULL(C.ODISAMTAV,0.00),ISNULL(C.ORWROFAM,0.00),  ISNULL(C.OTOTPAY,0.00), 0,' + @vAgingDate + '   from  PM30200 A with (NOLOCK)  JOIN PM00200 B with (NOLOCK)  ON  A.VENDORID = B.VENDORID ' + @vJoinVendorListTemp + '  LEFT OUTER JOIN MC020103 C with (NOLOCK)  ON  A.VCHRNMBR = C.VCHRNMBR  and  A.DOCTYPE = C.DOCTYPE  LEFT OUTER JOIN MC020105 D with (NOLOCK)  ON A.CURNCYID = D.CURNCYID  and A.VCHRNMBR = D.VCHRNMBR  and A.DOCTYPE  = D.DOCTYPE  and  convert(char(10), D.RVLUDATE, 102) + convert(char(10), D.SEQNUMBR)  = (select max(convert(char(10), MC020105.RVLUDATE, 102) + convert(char(10), MC020105.SEQNUMBR))  from  MC020105 with (NOLOCK)  where  MC020105.CURNCYID = A.CURNCYID  and  MC020105.VCHRNMBR = A.VCHRNMBR  and  MC020105.DOCTYPE  = A.DOCTYPE  and MC020105.RVLUDATE <= ' + @cStringEndDate + ')   where '  + @vRestrictVendorID + @vRestrictVendorName + @vRestrictClassID  + @vRestrictUserDefined + @vRestrictPayPriority + @vRestrictDocNumber  + @vRestrictDate + @vRestrictVoid )   end   end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetDocuments] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetDocuments] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetDocuments] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetDocuments] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetDocuments] TO [rpt_executive]
GO