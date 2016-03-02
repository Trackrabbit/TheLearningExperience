SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmPostBreakoutDistributions]   @I_cVoucherNumber  char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cOrigICID char(15)        = NULL,   @I_tMCRegistered tinyint  = NULL,   @I_sOrigCurrencyIndex smallint = NULL,  @I_cUserID char(15) = NULL,  @I_cTrxSource char(13) = NULL,  @I_dPostingDate datetime = NULL,  @I_cBreakoutTable   char(40) = NULL,  @O_tRelationError tinyint  = NULL output,   @O_iErrorState        int             = NULL  output as  declare   @TRUE tinyint,  @FALSE tinyint,  @MS_ITEM_19 int,   @tTransaction    tinyint,  @tLoop    tinyint,   @sMULTIPLY smallint,  @sDIVIDE smallint,  @iMaxSL int,   @sSequenceNumber int,   @dDEFAULT_DATE   datetime,  @sDUETO smallint,   @sDUEFROM smallint,  @cVoucherNumber char(22),  @cOrigICID   char(7),  @cBreakoutTable varchar(40),  @iStatus int,  @iError int,  @cStatement char(255),  @cStatement2 char(255),  @cControlType   char(1),  @cTrxSource char(15),  @iRelationID int,  @sUserLevel smallint,  @iAccessAllAccounts int,  @tALSRegistered tinyint,  @cCompanyID char(5),  @cDestICID char(5),  @vAccountFilterTable varchar(255),  @vExecStatement varchar(255),  @sORIGINATING smallint,   @sRateCalcMethod smallint,   @nXRate numeric(19,7),  @nDenomXRate numeric(19,7),  @cCurrencyID char(15),  @sMCTrxState smallint,   @sDecimalPlaces smallint,   @mAmount numeric(19,5),   @mFunctionalAmount numeric(19,5),  @sICCurrencyIndex smallint,  @sysuser char(15),  @vFunctionalAmount varchar(20),  @cUserID char(15),  @dMinDate datetime,  @cUNITDIST char(2)  select  @O_iErrorState  = 0,  @O_tRelationError = 0  exec @iStatus = smGetMinDate @dMinDate output  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction  end   while (@tLoop is NULL) begin   select @tLoop = 1    if     @I_cVoucherNumber  is NULL or   @I_sControlType is NULL or   @I_cOrigICID is NULL or   @I_tMCRegistered  is NULL or   @I_sOrigCurrencyIndex is NULL or  @I_cUserID is NULL or  @I_cTrxSource is NULL or  @I_dPostingDate is NULL or  @I_cBreakoutTable   is NULL  begin  select @O_iErrorState = 21018   break  end    select   @TRUE   = 1,  @FALSE   = 0,  @MS_ITEM_19  = power(2, 10),  @cUNITDIST  = convert(char(2),15),  @sMULTIPLY  = 0,   @sDIVIDE  = 1,  @dDEFAULT_DATE    = @dMinDate,  @sDUETO   = 19,   @sDUEFROM  = 20,  @iRelationID  = 0,  @sUserLevel  = 0,  @iAccessAllAccounts  = 0,  @tALSRegistered  = 0,  @iStatus  = 0,  @iError   = 0,  @sORIGINATING  = 4,  @mFunctionalAmount = 0.0   select   @sSequenceNumber = 16384   select   @iMaxSL = isnull(max(DSTSQNUM),0)  from  PM10100   where  VCHRNMBR = @I_cVoucherNumber  and CNTRLTYP = @I_sControlType   exec('delete ' + @I_cBreakoutTable )   select @cControlType = convert(char(1),@I_sControlType)   select @cBreakoutTable = rtrim(@I_cBreakoutTable)   Exec @iStatus = smFormatStringsForExecs  @I_cVoucherNumber,  @cVoucherNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cOrigICID,  @cOrigICID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError    if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cTrxSource ,  @cTrxSource  output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError    if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @cStatement =   'insert into ' + @cBreakoutTable  +  ' select INTERID,INTERID,' +   '0, 0.0, isnull(sum(ORCRDAMT - ORDBTAMT) ,0.0), ' +   '0, 0,0.0,0.0, 0, 0,0, '''', '''', '''   + convert(char,@dDEFAULT_DATE) + ''',''' + convert(char,@dDEFAULT_DATE) + ''',''' + convert(char,@dDEFAULT_DATE) + ''''   select @cStatement2 =   ' ,'''', '''', 0, 0.0, 0.0,0.0, 0.0, '''', 0,0.0,0' +   ' from PM10100 where  VCHRNMBR  = ' + @cVoucherNumber +   ' and CNTRLTYP = ' + @cControlType +   ' and INTERID <> ' + @cOrigICID     +   ' and DISTTYPE <> ' + @cUNITDIST +   ' group by INTERID ' +   ' having sum(ORCRDAMT - ORDBTAMT) <> 0.0'   exec (@cStatement +  @cStatement2)    select @cStatement =   'insert into ' + @cBreakoutTable  +  ' select ''' + @I_cOrigICID + ''',INTERID,' +   '0, 0.0, isnull(sum(ORCRDAMT - ORDBTAMT) ,0.0), ' +   '0, 0,0.0,0.0, 0, 0,0, '''', '''', ''' +   convert(char,@dDEFAULT_DATE) + ''',''' + convert(char,@dDEFAULT_DATE) + ''','''   select @cStatement2 = convert(char,@dDEFAULT_DATE) + ''' ,'''', '''', 0, 0.0, 0.0,0.0, 0.0, '''', 0,0.0,0' +   ' from PM10100 where  VCHRNMBR  = ' + @cVoucherNumber +   ' and CNTRLTYP = ' + @cControlType +   ' and INTERID <> ' + @cOrigICID     +   ' and DISTTYPE <> ' + @cUNITDIST +   ' group by INTERID ' +   ' having sum(ORCRDAMT - ORDBTAMT) <> 0.0'  exec(@cStatement +  @cStatement2)   exec ('update ' + @cBreakoutTable  +  ' set ' + @cBreakoutTable + '.XCHGRATE   = PM10100.XCHGRATE, ' +   @cBreakoutTable + '.DECPLACS  = PM10100.DECPLACS, ' +   @cBreakoutTable + '.RTCLCMTD   = PM10100.RTCLCMTD, ' +   @cBreakoutTable + '.CURRNIDX  = PM10100.CURRNIDX, ' +  @cBreakoutTable + '.RATETPID  = PM10100.RATETPID, ' +  @cBreakoutTable + '.EXGTBLID  = PM10100.EXGTBLID, ' +   @cBreakoutTable + '.EXCHDATE  = PM10100.EXCHDATE, ' +  @cBreakoutTable + '.TIME1  = PM10100.TIME1,    ' +  @cBreakoutTable + '.EXPNDATE  = PM10100.EXPNDATE, ' +  @cBreakoutTable + '.CURNCYID  = PM10100.CURNCYID, ' +   @cBreakoutTable + '.VENDORID   = PM10100.VENDORID, ' +  @cBreakoutTable + '.ICCURRID  = PM10100.ICCURRID, ' +  @cBreakoutTable + '.ICCURRIX  = PM10100.ICCURRIX, ' +  @cBreakoutTable + '.DENXRATE  = PM10100.DENXRATE, ' +  @cBreakoutTable + '.MCTRXSTT    = PM10100.MCTRXSTT ' +  'from    PM10100   where  PM10100.VCHRNMBR = ' + @cVoucherNumber +   ' and PM10100.CNTRLTYP = ' + @cControlType +  ' and  PM10100.DISTTYPE <> ' + @cUNITDIST +   ' and PM10100.INTERID  = ' + @cBreakoutTable + '.INTERID')    exec ('update ' + @cBreakoutTable  +   ' set SQNCLINE = DEX_ROW_ID' )   select @cStatement =  ' update ' + @cBreakoutTable +   ' set ACTINDX = isnull( ' +   '(select ' +   'icsetup.DSTTOIDX ' +  'from ' +   'DYNAMICS.dbo.IC40100 icsetup ' +  'where ' +  'icsetup.ORCOMID = ' + @cOrigICID +   ' and icsetup.DSTCOMID = ' + @cBreakoutTable + '.DSTCOMID), 0), '   select @cStatement2 =  ' DISTTYPE = ' + convert(char(2),@sDUETO) +   ' where ' +  @cBreakoutTable + '.INTERID = ' + @cBreakoutTable + '.DSTCOMID ' +  ' and ' + @cBreakoutTable + '.ORIGAMT  < 0'   exec (@cStatement + @cStatement2)   select @cStatement =  ' update ' + @cBreakoutTable +   ' set ACTINDX = isnull( ' +  '(select '+  'icsetup.DSTFRIDX ' +  'from ' +  'DYNAMICS.dbo.IC40100 icsetup ' +   'where ' +   'icsetup.ORCOMID = ' + @cOrigICID +   ' and icsetup.DSTCOMID = ' + @cBreakoutTable + '.DSTCOMID), 0), '   select @cStatement2 =  ' DISTTYPE = ' + convert(char(2),@sDUEFROM) +   ' where ' +   @cBreakoutTable + '.INTERID = ' + @cBreakoutTable + '.DSTCOMID' +  ' and ' + @cBreakoutTable + '.ORIGAMT  > 0'   exec (@cStatement + @cStatement2)   select @cStatement =  ' update ' + @cBreakoutTable +   ' set ACTINDX = isnull( ' +   '(select ' +  'icsetup.ORGTOIDX ' +   'from ' +   'DYNAMICS.dbo.IC40100 icsetup ' +   'where ' +  'icsetup.ORCOMID = ' + @cOrigICID +   ' and icsetup.DSTCOMID = ' + @cBreakoutTable + '.DSTCOMID), 0), '   select @cStatement2 =  ' DISTTYPE = ' + convert(char(2),@sDUETO)+   ' where ' +  @cBreakoutTable + '.INTERID = ' + @cOrigICID +   ' and ' + @cBreakoutTable + '.ORIGAMT  > 0'   exec (@cStatement + @cStatement2)    select @cStatement =  ' update ' + @cBreakoutTable +   ' set ACTINDX = isnull( ' +  '(select ' +   'icsetup.ORGFRIDX ' +  'from ' +  'DYNAMICS.dbo.IC40100 icsetup ' +   'where ' +  'icsetup.ORCOMID = ' + @cOrigICID +   ' and icsetup.DSTCOMID = ' + @cBreakoutTable + '.DSTCOMID), 0), '  select @cStatement2 =  ' DISTTYPE = ' + convert(char(2),@sDUEFROM) +   ' where ' +  @cBreakoutTable + '.INTERID = ' + @cOrigICID +   ' and ' + @cBreakoutTable + '.ORIGAMT  < 0'  exec (@cStatement + @cStatement2)   exec @iStatus = DYNAMICS..smGetAccountLevelSecurityInfo  @cOrigICID,  @iRelationID output,  @sUserLevel  output,  @iAccessAllAccounts output,  @tALSRegistered output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   select @sysuser = system_user    exec('declare DestinationCompany cursor for  select distinct '+  @cBreakoutTable + '.INTERID, DSTCOMID,RTCLCMTD,XCHGRATE,DENXRATE,'''',MCTRXSTT, DECPLACS, ORIGAMT, ICCURRIX, isnull(sm.USERID,'''')  from ' +  @cBreakoutTable + ',DYNAMICS..SY01500 cm LEFT OUTER JOIN ' +  'DYNAMICS..SY60100 sm ' +  'on (cm.CMPANYID = sm.CMPANYID and sm.USERID = ''' + @sysuser  + '''' + ')' +  ' where cm.INTERID  = '+ @cBreakoutTable + '.INTERID' )   open DestinationCompany   if @@cursor_rows <>  0  begin   fetch next from  DestinationCompany   into  @cCompanyID,  @cDestICID,  @sRateCalcMethod,  @nXRate,  @nDenomXRate,  @cCurrencyID,  @sMCTrxState,  @sDecimalPlaces,  @mAmount,  @sICCurrencyIndex,  @cUserID   while (@@fetch_status <> -1)  begin   if (@tALSRegistered = @TRUE) and   (@iAccessAllAccounts = @FALSE) and  (@cUserID <> '')  begin   select @vAccountFilterTable =   case when @sUserLevel = 0 then  rtrim(@cCompanyID) + '..GL00100F1 AFT '  else  rtrim(@cCompanyID) + '..GL00100F' + str(@sUserLevel,1) + ' AFT '   end   exec('update ' + @cBreakoutTable +   ' set AccountIndex = 0 where AccountIndex not in   (select AFT.ACTINDX from ' + @vAccountFilterTable +   'where AFT.ACTINDX = AccountIndex)')  end   if @I_tMCRegistered = @TRUE   begin     if @sICCurrencyIndex = @I_sOrigCurrencyIndex  exec('update ' + @cBreakoutTable +  ' set FUNCTAMT = ORIGAMT'+   ' where INTERID = ''' + @cCompanyID + '''')   else  begin   exec @iStatus = mcCalculateAmount  @sRateCalcMethod,  @sORIGINATING,  @nXRate,  @nDenomXRate,  @cCurrencyID,  @sMCTrxState,  @sDecimalPlaces,  '',    @mAmount,   @mFunctionalAmount output,   @O_iErrorState   output  select @iError = @@error   if @iStatus  = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0   break   select @vFunctionalAmount = isnull(convert(char,@mFunctionalAmount),'0.0')   exec('update ' + @cBreakoutTable +  ' set FUNCTAMT = ' + @vFunctionalAmount +  ' where INTERID = ''' + @cCompanyID + ''' and DSTCOMID = ''' + @cDestICID + '''')   end     end     fetch next from  DestinationCompany   into  @cCompanyID,  @cDestICID,  @sRateCalcMethod,  @nXRate,  @nDenomXRate,  @cCurrencyID,  @sMCTrxState,  @sDecimalPlaces,  @mAmount,  @sICCurrencyIndex,  @cUserID  end    end    deallocate DestinationCompany    if @I_tMCRegistered = @FALSE   begin  exec('update ' + @cBreakoutTable +  ' set FUNCTAMT = ORIGAMT')  end   select @cStatement =   'update ' + @cBreakoutTable +   ' set ' +  'CRDTAMNT = ' +   'CASE WHEN (DISTTYPE = ' + convert(char(2),@sDUETO) + ') ' +   'THEN abs(FUNCTAMT) ' +   ' else 0.0 ' +  'END, ' +   'DEBITAMT = ' +   'CASE WHEN (DISTTYPE = ' + convert(char(2),@sDUEFROM) + ') ' +   'THEN abs(FUNCTAMT) ' +  'else 0.0 ' +   'END, '    select @cStatement2 =   'ORCRDAMT = ' +   'CASE WHEN (DISTTYPE = ' + convert(char(2),@sDUETO) + ') ' +   'THEN abs(ORIGAMT) ' +  'else 0.0 ' +   'END, ' +   'ORDBTAMT = ' +   'CASE WHEN (DISTTYPE = ' + convert(char(2),@sDUEFROM) + ') ' +   'THEN abs(ORIGAMT) ' +  'else 0.0 ' +   'END'    exec(@cStatement + @cStatement2)   select @cStatement =   'insert into PM10100 ' +   'select distinct ' +   @cVoucherNumber  + ',' +   '(SQNCLINE * ' + rtrim(convert(char,@sSequenceNumber)) + ' + ' + rtrim(convert(char,@iMaxSL))  + '), ' +  @cControlType + ',' +   'CRDTAMNT, ' +   'DEBITAMT, ' +   'ACTINDX, ' +   'DISTTYPE, ' +   '0, ' +        '''' + @I_cUserID + ''',' +   '0, ' +      'VENDORID, ' +   @cTrxSource + ',' +  '''' + convert(char(12),@I_dPostingDate) + ''','    select @cStatement2 =   'INTERID, ' +   'CURNCYID, ' +   'CURRNIDX, ' +  'ORCRDAMT, ' +   'ORDBTAMT, ' +   ''''', ' +        '0, ' +       '0.0, ' +       ''''', ' +       'RATETPID, ' +   'EXGTBLID, ' +   'XCHGRATE, ' +   'EXCHDATE, ' +   'TIME1, ' +   'RTCLCMTD, ' +   'DECPLACS, ' +   'EXPNDATE, ' +   'ICCURRID, ' +   'ICCURRIX, ' +   'DENXRATE, ' +   'MCTRXSTT, ' +   ''''' ' +   'from ' +   @cBreakoutTable    exec(@cStatement + @cStatement2)   if @@rowcount = 0   begin  break  end   select   @O_tRelationError = @TRUE   where exists(   select   1   from   PM10100   where VCHRNMBR   = @I_cVoucherNumber   and  CNTRLTYP  = @I_sControlType   and DSTINDX  = 0) end   if @O_iErrorState <> 0 begin   if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return (@iStatus)     
GO
GRANT EXECUTE ON  [dbo].[icpmPostBreakoutDistributions] TO [DYNGRP]
GO
