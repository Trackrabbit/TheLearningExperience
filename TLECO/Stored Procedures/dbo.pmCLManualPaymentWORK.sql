SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmCLManualPaymentWORK]  @I_cUserID char(15) = NULL,  @I_cUserDate char(12) = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_cFileName1 varchar(40) = NULL,  @I_cFileName2 varchar(40) = NULL,  @I_cFileName3 varchar(40) = NULL,  @I_cFileName4 varchar(40) = NULL,  @I_cSearchString1 char(2)  = NULL,  @I_tMCRegistered tinyint  = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,    @iStatus int,    @PM_Payment varchar(50),  @XPM_Payment varchar(50),  @cMessage1 varchar(50),  @ccheckbkid char(15),   @cDBName char(5),  @tLoop tinyint,  @WORK int,  @sDefaultDate char(12)  select  @O_iErrorState = 0,  @iStatus  = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cUserID is NULL  or @I_cUserDate is NULL  or @I_cFunctionalCurrency is NULL  or @I_cFileName1 is NULL  or @I_cFileName2 is NULL  or @I_cFileName3 is NULL  or @I_cFileName4 is NULL  or @I_cSearchString1 is NULL  or @I_tMCRegistered is NULL  begin  select @O_iErrorState = 20843  break  end   exec @iStatus = smGetDefaultDate @sDefaultDate output   select @cDBName = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  871,  @cDBName,   @cMessage1 output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantString   'PM_PAYMENT_STR',   @PM_Payment output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantString  'XXPM_PAYMENT_STR',   @XPM_Payment output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'WORK',   @WORK output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   if @I_tMCRegistered = 1  begin  insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  PMNTNMBR,  6,  VENDORID  from  PM10400  where  PM10400.CURNCYID <> ''  and PM10400.CURNCYID <> @I_cFunctionalCurrency  and PM10400.BCHSOURC = @PM_Payment  and  NOT EXISTS  (select  1  from  MC020103  where  MC020103.VCHRNMBR = PM10400.PMNTNMBR  and MC020103.DOCTYPE = 6)   if @@rowcount <> 0  begin  delete  PM10400  where  PM10400.CURNCYID <> ''  and PM10400.CURNCYID <> @I_cFunctionalCurrency  and PM10400.BCHSOURC = @PM_Payment  and  NOT EXISTS  (select  1  from  MC020103  where  MC020103.VCHRNMBR = PM10400.PMNTNMBR  and MC020103.DOCTYPE  = 6 )   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName3,  NULL,  17638,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end   end  else  begin  update  PM10400  set  PM10400.CURNCYID  = ''  from  PM10400  where  PM10400.CURNCYID <> ''  and PM10400.CURNCYID <> @I_cFunctionalCurrency  and PM10400.BCHSOURC = @PM_Payment  and  NOT EXISTS  (select  1  from  MC020103  where  MC020103.VCHRNMBR = PM10400.PMNTNMBR  and MC020103.DOCTYPE = 6)  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  PMNTNMBR,  6,  VENDORID  from  PM10400  where  PM10400.CURNCYID <> ''  and PM10400.CURNCYID <> @I_cFunctionalCurrency  and PM10400.BCHSOURC = @PM_Payment  and  EXISTS  (select  1  from  MC020103  where  MC020103.DCSTATUS  <> @WORK  and MC020103.VCHRNMBR = PM10400.PMNTNMBR  and MC020103.DOCTYPE  = 6)   if @@rowcount <> 0  begin  update  MC020103  set  MC020103.DCSTATUS  = @WORK  from  PM10400  where  MC020103.DCSTATUS  <> @WORK  and MC020103.VCHRNMBR = PM10400.PMNTNMBR  and MC020103.DOCTYPE  = 6  and PM10400.BCHSOURC = @PM_Payment   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName4,  NULL,  18544,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  PMNTNMBR,  0,  VENDORID  from  PM10400  where  PM10400.BCHSOURC = @PM_Payment  and  NOT EXISTS  (select  1  from  PM00400  where  PM10400.PMNTNMBR = PM00400.CNTRLNUM  and PM10400.CNTRLTYP = PM00400.CNTRLTYP )   if @@rowcount <> 0  begin  insert into   PM00400(  DOCNUMBR,  DCSTATUS,  DOCTYPE,  VENDORID,  DOCDATE,  BCHSOURC,  CHEKBKID,  CNTRLTYP,  CNTRLNUM )  select  DOCNUMBR,  1,  DOCTYPE,  VENDORID,  DOCDATE,  BCHSOURC,  CHEKBKID,  CNTRLTYP,  PMNTNMBR   from  PM10400  where  PM10400.BCHSOURC = @PM_Payment  and  NOT EXISTS  (select  1  from  PM00400  where  PM10400.PMNTNMBR = PM00400.CNTRLNUM  and PM10400.CNTRLTYP = PM00400.CNTRLTYP )   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  @I_cSearchString1,  11506,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0   select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select distinct  BACHNUMB,  0,  ''  from  PM10400  where  PM10400.BCHSOURC + PM10400.BACHNUMB  NOT IN  (select BCHSOURC + BACHNUMB from SY00500)  and PM10400.BCHSOURC = @PM_Payment   if @@rowcount <> 0  begin  select @ccheckbkid =  (select   CHEKBKID   from   PM40100)   insert into  SY00500(  GLPOSTDT,  BCHSOURC,  BACHNUMB,  SERIES,   MKDTOPST,  NUMOFTRX,  BACHFREQ,  BCHCOMNT,  USERID,   CHEKBKID,   BCHTOTAL,   BACHDATE,  POSTTOGL,  CREATDDT,  BCHSTTUS,  ORIGIN )  select distinct  @I_cUserDate,  @PM_Payment,  BACHNUMB,  4,  0,  1,  1,  @cMessage1,  @I_cUserID,  @ccheckbkid,  0.00,  @I_cUserDate,  0,  @sDefaultDate,  0,  3  from  PM10400  where  PM10400.BCHSOURC + PM10400.BACHNUMB  NOT IN  (select BCHSOURC + BACHNUMB from SY00500)  and  PM10400.BCHSOURC = @PM_Payment   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName2,  @I_cSearchString1,  11506,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select distinct  BACHNUMB,  0,  VENDORID  from  PM10400  where  PM10400.BCHSOURC + PM10400.BACHNUMB  NOT IN  (select BCHSOURC + BACHNUMB from SY00500)  and  PM10400.BCHSOURC = @XPM_Payment   if @@rowcount <> 0  begin  delete  PM10400  where  PM10400.BCHSOURC + PM10400.BACHNUMB  NOT IN  (select BCHSOURC + BACHNUMB from SY00500)  and  PM10400.BCHSOURC = @XPM_Payment   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName3,  @I_cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    update  SY00500  set  BCHTOTAL = ( select sum(PM10400.DOCAMNT)  from  PM10400  where   SY00500.BACHNUMB = PM10400.BACHNUMB  and   SY00500.BCHSOURC = PM10400.BCHSOURC ),   NUMOFTRX = ( select count(PM10400.BACHNUMB)  from  PM10400  where   SY00500.BACHNUMB = PM10400.BACHNUMB  and   SY00500.BCHSOURC = PM10400.BCHSOURC )  from  SY00500,  PM10400  where  SY00500.BACHNUMB = PM10400.BACHNUMB  and   SY00500.BCHSOURC = PM10400.BCHSOURC  end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmCLManualPaymentWORK] TO [DYNGRP]
GO