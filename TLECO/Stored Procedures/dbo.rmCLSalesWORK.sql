SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmCLSalesWORK]   @I_cUserID char(15) = NULL,  @I_cUserDate char(12) = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_cFileName1 varchar(40) = NULL,  @I_cFileName2 varchar(40) = NULL,  @I_cFileName3 varchar(40) = NULL,  @I_cSearchString1 char(2)  = NULL,  @I_tMCRegistered tinyint  = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,   @iStatus int,    @tLoop tinyint,  @iRecordcount int,  @cMessage1 char(255),   @cCheckbkid char(15),   @cDBName char(5),  @XRM_Sales varchar(255),   @RM_Sales varchar(255),   @RMDOCCASH int,  @TRUE int,  @CHECK int,  @WORK int,  @PENDING int,  @sDefaultDate char(12),  @FALSE tinyint  select  @O_iErrorState = 0,  @iStatus  = 0,  @iRecordcount = 0,  @PENDING = 0,  @TRUE  = 1,  @FALSE  = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cUserID is NULL  or @I_cUserDate is NULL  or @I_cFunctionalCurrency is NULL  or @I_cFileName1 is NULL  or @I_cFileName2 is NULL  or @I_cFileName3 is NULL  or    @I_cSearchString1 is NULL  or @I_tMCRegistered is NULL  begin  select @O_iErrorState = 20846  break  end   exec @iStatus = smGetDefaultDate @sDefaultDate output   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_CASH',   @RMDOCCASH output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'CHECK',   @CHECK output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'WORK',   @WORK output,    @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @cDBName = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  10331,   @cDBName,  @cMessage1 output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantString   'XRM_SALES_STR',   @XRM_Sales output,   @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantString   'RM_SALES_STR',   @RM_Sales output,   @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  DOCNUMBR,  RMDTYPAL,  CUSTNMBR  from  RM10301  where RM10301.CURNCYID <> ''  and RM10301.CURNCYID <> @I_cFunctionalCurrency  and RM10301.BCHSOURC = @RM_Sales  and NOT EXISTS  (select 1  from MC020102  where RM10301.DOCNUMBR = MC020102.DOCNUMBR  and RM10301.RMDTYPAL = MC020102.RMDTYPAL )   if @@rowcount <> 0  begin   if @I_tMCRegistered = @TRUE   begin  delete  RM10301  from   RM10301  where RM10301.CURNCYID <> ''  and RM10301.CURNCYID <> @I_cFunctionalCurrency  and RM10301.BCHSOURC = @RM_Sales  and NOT EXISTS  (select 1  from MC020102  where RM10301.DOCNUMBR = MC020102.DOCNUMBR  and RM10301.RMDTYPAL = MC020102.RMDTYPAL )  exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  17638,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end  else   begin  update  RM10301  set  CURNCYID = ''  where RM10301.CURNCYID <> ''  and RM10301.CURNCYID <> @I_cFunctionalCurrency  and RM10301.BCHSOURC = @RM_Sales  and NOT EXISTS  (select 1  from MC020102  where RM10301.DOCNUMBR = MC020102.DOCNUMBR  and RM10301.RMDTYPAL = MC020102.RMDTYPAL )  end  end    update RM00401   set  DCSTATUS = 1,  BCHSOURC = RM10301.BCHSOURC,  TRXSORCE = '',  CUSTNMBR = RM10301.CUSTNMBR,  CHEKNMBR = '',  DOCDATE = RM10301.DOCDATE  from  RM10301,  RM00401  where RM00401.DOCNUMBR = RM10301.RMDNUMWK  and RM00401.RMDTYPAL = RM10301.RMDTYPAL  and RM10301.POSTED = @FALSE   update RM00401   set  DCSTATUS = 0,  BCHSOURC = RM10301.BCHSOURC,  TRXSORCE = '',  CUSTNMBR = RM10301.CUSTNMBR,  CHEKNMBR = '',  DOCDATE = RM10301.DOCDATE  from  RM10301,  RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCSH  and RM00401.RMDTYPAL = @RMDOCCASH  and RM10301.POSTED = @FALSE    update RM00401   set  DCSTATUS = 0,  BCHSOURC = RM10301.BCHSOURC,  TRXSORCE = '',  CUSTNMBR = RM10301.CUSTNMBR,  CHEKNMBR = RM10301.CHEKNMBR,  DOCDATE = RM10301.DOCDATE  from  RM10301,  RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCHK  and RM00401.RMDTYPAL = @RMDOCCASH  and RM10301.POSTED = @FALSE   update RM00401   set  DCSTATUS = 0,  BCHSOURC = RM10301.BCHSOURC,  TRXSORCE = '',  CUSTNMBR = RM10301.CUSTNMBR,  CHEKNMBR = '',  DOCDATE = RM10301.DOCDATE  from  RM10301,  RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCRD  and RM00401.RMDTYPAL = @RMDOCCASH  and RM10301.POSTED = @FALSE   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID)  select  RMDNUMWK,  RMDTYPAL,  CUSTNMBR  from  RM10301  where  RM10301.BCHSOURC = @RM_Sales  and  RM10301.RMDNUMWK <> ''  and RM10301.POSTED = @FALSE  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.RMDNUMWK  and RM00401.RMDTYPAL = RM10301.RMDTYPAL  and RM00401.DCSTATUS = @WORK)   select @iRecordcount = @@rowcount   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID)  select  DCNUMCSH,  @RMDOCCASH,  CUSTNMBR  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCSH <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCSH  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   select @iRecordcount = @iRecordcount + @@rowcount   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID)  select  DCNUMCHK,  @RMDOCCASH,  CUSTNMBR  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCHK <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCHK  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   select @iRecordcount = @iRecordcount + @@rowcount   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID)  select  DCNUMCRD,  @RMDOCCASH,  CUSTNMBR  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCRD <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCRD  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   select @iRecordcount = @iRecordcount + @@rowcount   if @iRecordcount <> 0  begin   insert into   RM00401(  DOCNUMBR,  RMDTYPAL,  DCSTATUS,  BCHSOURC,  CUSTNMBR,  CHEKNMBR,  DOCDATE)  select  RMDNUMWK,  RMDTYPAL,  1,  BCHSOURC,  CUSTNMBR,  '',  DOCDATE  from  RM10301  where  RM10301.BCHSOURC = @RM_Sales  and  RM10301.RMDNUMWK <> ''  and RM10301.POSTED = @FALSE  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.RMDNUMWK  and RM00401.RMDTYPAL = RM10301.RMDTYPAL  and RM00401.DCSTATUS = @WORK)   insert into   RM00401(  DOCNUMBR,  RMDTYPAL,  DCSTATUS,  BCHSOURC,  CUSTNMBR,  CHEKNMBR,  DOCDATE)  select  DCNUMCSH,  @RMDOCCASH,  0,  BCHSOURC,  CUSTNMBR,  '',  DOCDATE  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCSH <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCSH  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   insert into   RM00401(  DOCNUMBR,  RMDTYPAL,  DCSTATUS,  BCHSOURC,  CUSTNMBR,  CHEKNMBR,  DOCDATE)  select  DCNUMCHK,  @RMDOCCASH,  0,  BCHSOURC,  CUSTNMBR,  CHEKNMBR,  DOCDATE  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCHK <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCHK  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   insert into   RM00401(  DOCNUMBR,  RMDTYPAL,  DCSTATUS,  BCHSOURC,  CUSTNMBR,  CHEKNMBR,  DOCDATE)  select  DCNUMCRD,  @RMDOCCASH,  0,  BCHSOURC,  CUSTNMBR,  '',  DOCDATE  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and RM10301.DCNUMCRD <> ''  and NOT EXISTS  (select 1  from RM00401  where RM00401.DOCNUMBR = RM10301.DCNUMCRD  and RM00401.RMDTYPAL = @RMDOCCASH  and RM00401.DCSTATUS = @PENDING)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10324,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select distinct  BACHNUMB,  0,  ''  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and NOT EXISTS  (select 1  from SY00500  where SY00500.BCHSOURC = RM10301.BCHSOURC  and SY00500.BACHNUMB = RM10301.BACHNUMB)   if @@rowcount <> 0  begin  select  @cCheckbkid = CHEKBKID   from RM40101 with (NOLOCK)   insert into  SY00500(  GLPOSTDT,  BCHSOURC,  BACHNUMB,  SERIES,   MKDTOPST,  NUMOFTRX,  BACHFREQ,  BCHCOMNT,  USERID,   CHEKBKID,   BCHTOTAL,   BACHDATE,  POSTTOGL,  CREATDDT,  BCHSTTUS,  ORIGIN )  select distinct  @I_cUserDate,  @RM_Sales,  BACHNUMB,  3,  0,  1,  1,  substring(@cMessage1,1,30),  @I_cUserID,  @cCheckbkid,  0.00,  @I_cUserDate,  0,  @sDefaultDate,  0,  1  from  RM10301  where RM10301.BCHSOURC = @RM_Sales  and NOT EXISTS  (select 1  from SY00500  where SY00500.BCHSOURC = RM10301.BCHSOURC  and SY00500.BACHNUMB = RM10301.BACHNUMB)   update  SY00500  set  BCHTOTAL = ( select  sum(RM10301.DOCAMNT)  from RM10301  where  SY00500.BACHNUMB = RM10301.BACHNUMB  and SY00500.BCHSOURC = RM10301.BCHSOURC ),   NUMOFTRX = ( select  count(RM10301.BACHNUMB)  from RM10301  where  SY00500.BACHNUMB = RM10301.BACHNUMB  and SY00500.BCHSOURC = RM10301.BCHSOURC )  from  SY00500,  RM10301,  #CNTRLNUMTEMP  where SY00500.BACHNUMB = RM10301.BACHNUMB  and SY00500.BCHSOURC = RM10301.BCHSOURC  and SY00500.BACHNUMB = #CNTRLNUMTEMP.CNTRLNUM   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName2,  @I_cSearchString1,  11506,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select distinct  BACHNUMB,  0,  ''  from  RM10301  where RM10301.BCHSOURC = @XRM_Sales  and NOT EXISTS  (select 1  from SY00500  where SY00500.BCHSOURC = RM10301.BCHSOURC  and SY00500.BACHNUMB = RM10301.BACHNUMB)   if @@rowcount <> 0  begin  delete  RM10301  where RM10301.BCHSOURC = @XRM_Sales  and NOT EXISTS  (select 1  from SY00500  where SY00500.BCHSOURC = RM10301.BCHSOURC  and SY00500.BACHNUMB = RM10301.BACHNUMB)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  @I_cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end   end   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[rmCLSalesWORK] TO [DYNGRP]
GO
