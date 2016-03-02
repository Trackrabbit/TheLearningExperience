SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmPrintHATBGetApplyHistory]  @I_tUsingDocumentDate tinyint  = NULL,  @I_dStartDate datetime = NULL,  @I_dEndDate datetime = NULL,  @I_cStartDocumentNumber char(20) = NULL,  @I_cEndDocumentNumber char(20) = NULL,  @I_tExcludeMultiCurrency tinyint  = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_sPrintCurrencyIn smallint = NULL,  @I_nReportingExchangeRate numeric(15,7) = NULL,  @I_sReportingRateCalcMethod smallint = NULL,  @I_sReportingDecimalPlaces smallint = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE smallint,  @FALSE smallint,  @cUsingDocumentDate char(1),  @cStartDate char(12),  @cEndDate char(12),  @vExcludeApplyDateRange varchar(255),  @vExcludeDateRange varchar(255),  @cPrintCurrencyIn char(1),  @cMCRegistered char(1),  @cReportingExchangeRate char(20),  @cReportingRateCalcMethod char(1),  @cReportingDecimalPlaces char(1),  @tLoopControl           tinyint,  @iStatus                int,  @iError                 int  select  @iStatus = 0,  @O_iErrorState = 0  select  @TRUE  = 1,  @FALSE = 0  while @tLoopControl is NULL begin  select @tLoopControl = 1   if      @I_tUsingDocumentDate is NULL or  @I_dStartDate is NULL or  @I_dEndDate is NULL or  @I_cStartDocumentNumber is NULL or  @I_cEndDocumentNumber is NULL or  @I_tExcludeMultiCurrency is NULL or  @I_cFunctionalCurrency is NULL or  @I_tMCRegistered is NULL or  @I_sPrintCurrencyIn is NULL or  @I_nReportingExchangeRate is NULL or  @I_sReportingRateCalcMethod is NULL or  @I_sReportingDecimalPlaces is NULL  begin  select @O_iErrorState = 20961  break  end    select @cMCRegistered = convert(char(1),@I_tMCRegistered)  select @cPrintCurrencyIn = convert(char(1),@I_sPrintCurrencyIn)  select @cReportingExchangeRate = convert(char(20),@I_nReportingExchangeRate)  select @cReportingRateCalcMethod = convert(char(1),@I_sReportingRateCalcMethod)  select @cReportingDecimalPlaces = convert(char(1),@I_sReportingDecimalPlaces)   select @cUsingDocumentDate = convert(char(1),@I_tUsingDocumentDate),  @cStartDate = '''' + convert(char(10),@I_dStartDate,102) + '''',  @cEndDate = '''' + convert(char(10),@I_dEndDate,102) + ''''   if @I_tUsingDocumentDate = @TRUE  begin  select @vExcludeApplyDateRange = ' and A.DATE1 BETWEEN ' + @cStartDate + ' and ' + @cEndDate  select @vExcludeDateRange = ' and A.DOCDATE BETWEEN ' + @cStartDate + ' and ' + @cEndDate  end  else  begin  select @vExcludeApplyDateRange = ' and A.GLPOSTDT BETWEEN ' + @cStartDate + ' and ' + @cEndDate  select @vExcludeDateRange = ' and A.ApplyFromGLPostDate  BETWEEN ' + @cStartDate + ' and ' + @cEndDate  end   if @I_tExcludeMultiCurrency = @TRUE  begin  exec('insert into  #ApplyTEMP  select  A.APTVCHNM,A.APTODCTY,A.VCHRNMBR,A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.APPLDAMT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.APPLDAMT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.APPLDAMT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.RLGANLOS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.RLGANLOS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.RLGANLOS  end,  A.ORAPPAMT,A.ORDISTKN,A.ORWROFAM,A.CURNCYID,A.CURRNIDX,0.00,0.00,0,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.GSTDSAMT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.GSTDSAMT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.GSTDSAMT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.PPSAMDED * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.PPSAMDED / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.PPSAMDED  end,  B.AgingPeriod,A.POSTED  from  #DocumentTEMP B JOIN PM30300 A (NOLOCK) ON  (B.VoucherNumber = A.APTVCHNM and B.DocumentType  = A.APTODCTY)  where  B.OpenRecord = 0   and B.DocumentType  < 4 '  + @vExcludeDateRange  + @vExcludeApplyDateRange + '  and  NOT EXISTS(  select  1  from  #ApplyTEMP C WITH(INDEX(AK1ApplyTEMP))  where  A.APTVCHNM = C.ApplyToVoucherNumber  and A.APTODCTY = C.ApplyToDocumentType  and A.VCHRNMBR = C.VoucherNumber  and A.DOCTYPE  = C.DocumentType)' )   end    else if @I_tExcludeMultiCurrency = @FALSE  begin  exec('insert into  #ApplyTEMP  select  A.APTVCHNM,A.APTODCTY,A.VCHRNMBR,A.DOCTYPE,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.APPLDAMT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.APPLDAMT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.APPLDAMT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.RLGANLOS * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.RLGANLOS / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.RLGANLOS  end,  case   WHEN (A.CURNCYID <> '''' and A.CURNCYID <> ''' + @I_cFunctionalCurrency + ''') THEN  A.ORAPPAMT  ELSE  0.00  end,  case    WHEN (A.FROMCURR = '''' or A.FROMCURR = ''' + @I_cFunctionalCurrency + ''') and  (A.CURNCYID = '''' or A.CURNCYID = ''' + @I_cFunctionalCurrency + ''') THEN  0.00  ELSE   A.ORDISTKN  end,  case    WHEN (A.FROMCURR = '''' or A.FROMCURR = ''' + @I_cFunctionalCurrency + ''') and  (A.CURNCYID = '''' or A.CURNCYID = ''' + @I_cFunctionalCurrency + ''') THEN  0.00  ELSE   A.ORWROFAM  end,  case  WHEN (A.FROMCURR = '''') THEN  A.CURNCYID  ELSE  A.FROMCURR  end,  ISNULL(C.CURRNIDX,0),  case    WHEN (A.FROMCURR <> '''' and A.FROMCURR <> ''' + @I_cFunctionalCurrency + ''') and  (A.CURNCYID <> '''' and A.CURNCYID <> ''' + @I_cFunctionalCurrency + ''') THEN  ISNULL(D.XCHGRATE,ISNULL(C.XCHGRATE,0.00))  ELSE   0.00  end,  case    WHEN (A.FROMCURR <> '''' and A.FROMCURR <> ''' + @I_cFunctionalCurrency + ''') and  (A.CURNCYID <> '''' and A.CURNCYID <> ''' + @I_cFunctionalCurrency + ''') THEN  case WHEN (D.XCHGRATE IS NULL or D.XCHGRATE = 0.0000000) THEN  ISNULL(C.DENXRATE,0.00)  ELSE  ISNULL(D.DENXRATE,0.00)  end  ELSE   0.00  end,  case    WHEN (A.FROMCURR <> '''' and A.FROMCURR <> ''' + @I_cFunctionalCurrency + ''') and  (A.CURNCYID <> '''' and A.CURNCYID <> ''' + @I_cFunctionalCurrency + ''') THEN  case WHEN (D.XCHGRATE IS NULL or D.XCHGRATE = 0.0000000) THEN  ISNULL(C.MCTRXSTT,0)  ELSE  ISNULL(D.MCTRXSTT,0)  end  ELSE   0  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.DISTKNAM * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.DISTKNAM / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.DISTKNAM  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.GSTDSAMT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.GSTDSAMT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.GSTDSAMT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.WROFAMNT * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.WROFAMNT / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.WROFAMNT  end,  case WHEN ' + @cPrintCurrencyIn + ' = 1 and ' + @cMCRegistered + ' = 1 then  case when ' + @cReportingRateCalcMethod + ' = 1 then  ISNULL(ROUND((A.PPSAMDED * ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  else  ISNULL(ROUND((A.PPSAMDED / ' + @cReportingExchangeRate + '),   ' + @cReportingDecimalPlaces + '),0.00)  end  ELSE  A.PPSAMDED  end,  B.AgingPeriod,A.POSTED  from  #DocumentTEMP B  JOIN PM30300 A with (NOLOCK)  ON B.VoucherNumber = A.APTVCHNM  and  B.DocumentType  = A.APTODCTY  LEFT OUTER JOIN MC020103 C with (NOLOCK)  ON A.APTVCHNM = C.VCHRNMBR  and  A.APTODCTY = C.DOCTYPE  LEFT OUTER JOIN MC020105 D with (NOLOCK)  ON D.CURNCYID = A.CURNCYID  and D.VCHRNMBR = A.APTVCHNM  and D.DOCTYPE  = A.APTODCTY  and  (convert(char(10), D.RVLUDATE, 102) + convert(char(10), D.SEQNUMBR))  = (select max(convert(char(10), MC020105.RVLUDATE, 102) + convert(char(10), MC020105.SEQNUMBR))  from  MC020105 with (NOLOCK)  where  MC020105.CURNCYID = A.CURNCYID  and  MC020105.VCHRNMBR = A.APTVCHNM  and  MC020105.DOCTYPE  = A.APTODCTY  and MC020105.RVLUDATE <= ' + @cEndDate + ')  where  B.OpenRecord = 0   and B.DocumentType  < 4 '  + @vExcludeDateRange  + @vExcludeApplyDateRange + '  and  NOT EXISTS(  select  1  from  #ApplyTEMP D WITH(INDEX(AK1ApplyTEMP))  where  A.APTVCHNM = D.ApplyToVoucherNumber  and A.APTODCTY = D.ApplyToDocumentType  and A.VCHRNMBR = D.VoucherNumber  and A.DOCTYPE  = D.DocumentType)' )   end   end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetApplyHistory] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetApplyHistory] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetApplyHistory] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetApplyHistory] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[pmPrintHATBGetApplyHistory] TO [rpt_executive]
GO
