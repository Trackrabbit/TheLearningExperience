SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmBuildTrxInquiryByDateRange]  @I_cTableName char(25) = NULL,  @I_dStartDate datetime = NULL,  @I_dEndDate datetime = NULL,  @O_iErrorState int  = NULL  output as  declare   @iError    int,  @VOUCHER_NUMBER_CONTROL_TYPE  int,  @WORK     int,  @OPEN     int,  @HIST     int,  @KEY_UNSAVED    int,  @KEY_RECOVERED    int,  @TRX_UNSAVED    int,  @iStatus    int,  @dMinDate    datetime,  @FALSE     tinyint,  @vVOUCHER_NUMBER_CONTROL_TYPE  varchar(2),  @vWORK     varchar(2),  @vOPEN     varchar(2),  @vHIST     varchar(2),  @vKEY_UNSAVED    varchar(2),  @vKEY_RECOVERED   varchar(2),  @vTRX_UNSAVED    varchar(2),  @vFALSE    varchar(2),  @vMinDate    varchar(30),  @vStartDate    varchar(30),  @vEndDate    varchar(30),  @vColumnList    varchar(500)  if   @I_cTableName is NULL or  @I_dStartDate is NULL or  @I_dEndDate is NULL begin  select @O_iErrorState = 21080  return end  select @O_iErrorState = 0  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'FALSE',  @FALSE output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'WORK',  @WORK output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'OPEN',  @OPEN output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'HIST',  @HIST output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'VOUCHER_NUMBER_CONTROL_TYPE',  @VOUCHER_NUMBER_CONTROL_TYPE output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'KEY_UNSAVED',  @KEY_UNSAVED output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'KEY_RECOVERED',  @KEY_RECOVERED output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'TRX_UNSAVED',  @TRX_UNSAVED output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  exec @iStatus = smGetMinDate @dMinDate output  select  @vVOUCHER_NUMBER_CONTROL_TYPE = cast(@VOUCHER_NUMBER_CONTROL_TYPE as varchar(2)),  @vWORK = cast(@WORK as varchar(2)),  @vOPEN = cast(@OPEN as varchar(2)),  @vHIST = cast (@HIST as varchar(2)),  @vKEY_UNSAVED = cast(@KEY_UNSAVED as varchar(2)),  @vKEY_RECOVERED = cast(@KEY_RECOVERED as varchar(2)),  @vTRX_UNSAVED = cast(@TRX_UNSAVED as varchar(2)),  @vFALSE = cast(@FALSE as varchar(2)),  @vMinDate = cast(@dMinDate as varchar(30)),  @vStartDate = cast(@I_dStartDate as varchar(30)),  @vEndDate = cast(@I_dEndDate as varchar(30))  select @vColumnList =  'VCHRNMBR,'+     'VENDORID,'+    'DOCTYPE,'+     'DOCDATE,'+     'DOCNUMBR,'+     'DOCAMNT,'+     'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'TRXSORCE,'+     'BCHSOURC,'+     'DISCDATE,'+     'DUEDATE,'+     'PORDNMBR,'+     'TEN99AMNT,'+     'WROFAMNT,'+     'DISAMTAV,'+     'TRXDSCRN,'+     'UN1099AM,'+     'RETNAGAM,'+     'VOIDED,'+    'HOLD,'+     'CHEKBKID,'+     'DINVPDOF,'+     'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     'DCSTATUS,'+     'BKTPURAM,'+     'CURNCYID,'+     'CURRNIDX,'+     'ICTRX,'+     'CORRCTN,'+     'SIMPLIFD,'+     'FUNCDOCAMNT,'+    'FUNCCURTRXAM,'+   'BackoutTradeDisc'    exec('truncate table ' + @I_cTableName )  exec ('insert into ' + @I_cTableName +  '('+ @vColumnList + ')' + ' select VCHRNMBR,'+     'trx.VENDORID,'+   'trx.DOCTYPE,'+    'trx.DOCDATE,'+    'trx.DOCNUMBR,'+    'DOCAMNT,'+     'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'TRXSORCE,'+     'trx.BCHSOURC,'+    'trx.DISCDATE,'+    'trx.DUEDATE,'+    'PORDNMBR,'+     'TEN99AMNT,'+     'WROFAMNT,'+     'DISAMTAV,'+     'TRXDSCRN,'+     'UN1099AM,'+     'RETNAGAM,'+     '0,'+      '0,'+      'trx.CHEKBKID,'+    ''''+ @vMinDate+''','+    'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     @vWORK+','+     'BKTPURAM,'+     'CURNCYID,'+     '0,'+      'ICTRX,'+     'CORRCTN,'+     'SIMPLIFD,'+     'DOCAMNT,'+     'CURTRXAM,'+     '0'+     ' from PM10000 trx, PM00400 pm' + ' where pm.CNTRLTYP = ' + @vVOUCHER_NUMBER_CONTROL_TYPE + ' and ' +  'left(pm.CNTRLNUM, 17) = trx.VCHNUMWK and ' +  'pm.DOCTYPE = trx.DOCTYPE and ' +  'pm.DCSTATUS in (' + @vWORK + ',' + @vKEY_UNSAVED + ',' + @vKEY_RECOVERED + ') and '+  'trx.PSTGSTUS != ' + @vTRX_UNSAVED + ' and ' +  'pm.DOCDATE between ''' +@vStartDate + ''' and ''' + @vEndDate + '''')  exec ('insert into ' + @I_cTableName +  '('+ @vColumnList + ')' + ' select '+  'VCHRNMBR,'+     'trx.VENDORID,'+   'trx.DOCTYPE,'+    'trx.DOCDATE,'+    'trx.DOCNUMBR,'+    'trx.CHEKTOTL,'+    'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'TRXSORCE,'+     'trx.BCHSOURC,'+    ''''+@vMinDate+''','+    ''''+@vMinDate+''','+    ''''','+      '0.0,'+     'WROFAMNT,'+     'DISAMTAV,'+     ''''','+     '0.0,'+      '0.0,'+     '0,'+      '0,'+      'trx.CHEKBKID,'+    ''''+@vMinDate+''','+   'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     @vWORK +','+     '0.0,'+      'CURNCYID,'+     '0,'+      @vFALSE +','+    @vFALSE +','+     @vFALSE +','+    'TotDocAmt,'+     'CURTRXAM,'+     '0'+     ' from PM10300 trx, PM00400 pm' + ' where pm.CNTRLTYP != ' + @vVOUCHER_NUMBER_CONTROL_TYPE + ' and '+  'pm.CNTRLNUM = trx.VCHRNMBR and ' +  'pm.CNTRLNUM = trx.PMNTNMBR and ' +  'pm.DOCTYPE = trx.DOCTYPE and ' +  'pm.DCSTATUS in (' + @vWORK + ',' +  @vKEY_UNSAVED + ',' + @vKEY_RECOVERED + ') and ' +  'trx.PSTGSTUS != ' + @vTRX_UNSAVED + 'and ' +  'pm.DOCDATE between ''' + @vStartDate + ''' and ''' + @vEndDate + '''')  exec ('insert into ' + @I_cTableName +  '('+ @vColumnList + ')' + ' select ' +  'VCHRNMBR,'+     'trx.VENDORID,'+    'trx.DOCTYPE,'+    'trx.DOCDATE,'+    'trx.DOCNUMBR,'+    'trx.DOCAMNT,'+    'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'TRXSORCE,'+     'trx.BCHSOURC,'+    ''''+@vMinDate+''','+   ''''+@vMinDate+''','+   ''''','+      '0.0,'+     'WROFAMNT,'+     'DISAMTAV,'+     ''''','+      '0.0,'+      '0.0,'+      '0,'+      '0,'+      'trx.CHEKBKID,'+    ''''+@vMinDate+''','+   'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     @vWORK+','+     '0.0,'+      'CURNCYID,'+     '0,'+      @vFALSE+','+    @vFALSE+','+     @vFALSE+','+     'DOCAMNT,'+     'CURTRXAM,'+    '0'+     ' from PM10400 trx, PM00400 pm ' + ' where pm.CNTRLTYP != ' + @vVOUCHER_NUMBER_CONTROL_TYPE + ' and ' +  'pm.CNTRLNUM = trx.PMNTNMBR and ' +  'pm.DOCTYPE = trx.DOCTYPE and ' +  'pm.DCSTATUS in (' + @vWORK + ',' + @vKEY_UNSAVED + ',' + @vKEY_RECOVERED + ') and '+  'pm.DOCDATE between ''' + @vStartDate + ''' and ''' + @vEndDate + '''')  exec ('insert into ' + @I_cTableName +  '('+ @vColumnList + ')' + ' select '+  'VCHRNMBR,'+     'trx.VENDORID,'+   'trx.DOCTYPE,'+    'trx.DOCDATE,'+    'trx.DOCNUMBR,'+    'DOCAMNT,'+     'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'pm.TRXSORCE,'+    'trx.BCHSOURC,'+    'trx.DISCDATE,'+    'trx.DUEDATE,'+    'PORDNMBR,'+     'TEN99AMNT,'+     'WROFAMNT,'+     'DISAMTAV,'+     'TRXDSCRN,'+     'UN1099AM,'+     'RETNAGAM,'+     'VOIDED,'+     'HOLD,'+    'trx.CHEKBKID,'+    ''''+@vMinDate+''','+   'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     'pm.DCSTATUS,'+    'BKTPURAM,'+    'CURNCYID,'+     '0,'+      'ICTRX,'+    'CORRCTN,'+    'SIMPLIFD,'+     'DOCAMNT,'+     'CURTRXAM,'+    '0'+     ' from PM20000 trx, PM00400 pm ' + ' where pm.CNTRLNUM = trx.VCHRNMBR and ' +  'pm.DOCTYPE = trx.DOCTYPE and ' +  'pm.DCSTATUS = ' + @vOPEN + 'and ' +  'pm.DOCDATE between ''' + @vStartDate + ''' and ''' + @vEndDate + '''')  exec ('insert into ' + @I_cTableName +  '('+ @vColumnList + ')' + ' select '+  'VCHRNMBR,'+     'trx.VENDORID,'+    'trx.DOCTYPE,'+    'trx.DOCDATE,'+    'trx.DOCNUMBR,'+    'DOCAMNT,'+     'CURTRXAM,'+     'DISTKNAM,'+     'BACHNUMB,'+     'pm.TRXSORCE,'+    'trx.BCHSOURC,'+    'trx.DISCDATE,'+    'trx.DUEDATE,'+    'PORDNMBR,'+     'TEN99AMNT,'+     'WROFAMNT,'+     'DISAMTAV,'+     'TRXDSCRN,'+     'UN1099AM,'+     'RETNAGAM,'+     'VOIDED,'+     'HOLD,'+     'trx.CHEKBKID,'+    ''''+@vMinDate+''','+    'PPSAMDED,'+     'PPSTAXRT,'+     'GSTDSAMT,'+     'POSTEDDT,'+     'PTDUSRID,'+     'MODIFDT,'+     'MDFUSRID,'+     'pm.DCSTATUS,'+    'BKTPURAM,'+     'CURNCYID,'+     '0,'+      'ICTRX,'+    'CORRCTN,'+     'SIMPLIFD,'+     'DOCAMNT,'+     'CURTRXAM,'+    '0'+     ' from PM30200 trx, PM00400 pm ' + ' where pm.CNTRLNUM = trx.VCHRNMBR and ' +  'pm.DOCTYPE = trx.DOCTYPE and ' +  'pm.DCSTATUS = ' + @vHIST + 'and ' +  'pm.DOCDATE between ''' + @vStartDate + ''' and ''' + @vEndDate + '''')  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[pmBuildTrxInquiryByDateRange] TO [DYNGRP]
GO