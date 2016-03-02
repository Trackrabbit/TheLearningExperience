SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmCLMoveFullyApplied]   @I_cUserID char(15) = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_cFileName1 varchar(40) = NULL,  @I_cSearchString1 char(2)  = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,    @iStatus int,    @MS_ITEM_7 int,  @history tinyint,  @HIST int,  @XPM_Cchecks char(11),  @tLoop tinyint,  @sDefaultDate char(12)  select  @O_iErrorState = 0,  @iStatus  = 0,  @MS_ITEM_7      = power(2,30)  set nocount on  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cUserID is NULL  or @I_cFunctionalCurrency is NULL  or @I_cFileName1 is NULL  or @I_cSearchString1 is NULL  begin  select @O_iErrorState = 20984  break  end   exec @iStatus = smGetDefaultDate @sDefaultDate output   exec @iStatus = DYNAMICS..smGetConstantString   'XPM_CCHECKS_STR',   @XPM_Cchecks output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt   'HIST',  @HIST output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError    if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  break   create table #HISTTEMP(  VCHRNMBR varchar(21) not null,  DOCTYPE smallint not null,  VENDORID varchar(15) not null,  TRXSORCE varchar(13) not null,  CNTRLTYP smallint not null,  CURTRXAM numeric(19,5) not null,  DOCAMNT numeric(19,5) not null,  HISTORY tinyint not null )   select @history =  (select   PRTHATRB   from   PM40100)   insert into  #HISTTEMP  select  PM20000.VCHRNMBR,  PM20000.DOCTYPE,  PM20000.VENDORID,  PM20000.TRXSORCE,  PM20000.CNTRLTYP,  PM20000.CURTRXAM,  PM20000.DOCAMNT,  0  from  PM20000 left outer join MC020105 on  (PM20000.VCHRNMBR = MC020105.VCHRNMBR  and  PM20000.DOCTYPE = MC020105.DOCTYPE)  WHERE   (PM20000.CURTRXAM = 0  or PM20000.CURTRXAM > PM20000.DOCAMNT)   group by PM20000.VCHRNMBR,  PM20000.DOCTYPE,  PM20000.VENDORID,  PM20000.TRXSORCE,  PM20000.CNTRLTYP,  PM20000.CURTRXAM,  PM20000.DOCAMNT  having isnull(sum(UnsettledCurrentGainLoss),0.0) = 0.0   insert into  #CNTRLNUMTEMP  (CNTRLNUM,  DOCTYPE,  VENDORID)  select  TRX.VCHRNMBR,  TRX.DOCTYPE,  TRX.VENDORID  from  #HISTTEMP TRX  where  TRX.CURTRXAM > TRX.DOCAMNT  or  (VCHRNMBR  NOT IN    (select  VCHRNMBR  from  PM10200  where  TRX.VCHRNMBR = PM10200.VCHRNMBR  and  TRX.DOCTYPE = PM10200.DOCTYPE)  and  TRX.DOCTYPE > 3)  and  (VCHRNMBR  NOT IN    (select  APTVCHNM  from  PM10200  where  TRX.VCHRNMBR = PM10200.APTVCHNM  and  TRX.DOCTYPE = PM10200.APTODCTY)  and  TRX.DOCTYPE < 4)   delete  #HISTTEMP  where  EXISTS  (select  CNTRLNUM  from  #CNTRLNUMTEMP  where  #CNTRLNUMTEMP.CNTRLNUM = #HISTTEMP.VCHRNMBR  and  #CNTRLNUMTEMP.DOCTYPE = #HISTTEMP.DOCTYPE )   update  PM20000  set  CURTRXAM = DOCAMNT,  DINVPDOF = @sDefaultDate,  DISAVTKN = 0.00,  DISTKNAM = 0.00,  GSTDSAMT = 0.00,  PPSAMDED = 0.00,  WROFAMNT = 0.00,  UN1099AM = TEN99AMNT  from  #CNTRLNUMTEMP TRXTEMP  where  TRXTEMP.CNTRLNUM = PM20000.VCHRNMBR  and  TRXTEMP.DOCTYPE = PM20000.DOCTYPE   if @@rowcount <> 0  begin  exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10490,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    delete  #HISTTEMP  from  PM10200  where  #HISTTEMP.VCHRNMBR = PM10200.APTVCHNM  and  #HISTTEMP.DOCTYPE = PM10200.APTODCTY  and  #HISTTEMP.DOCTYPE < 4  and  ( ( ( PM10200.VCHRNMBR  IN  (select  PMNTNMBR   from  PM10300  where  PM10300.BCHSOURC = @XPM_Cchecks )  or  PM10200.VCHRNMBR  IN  (select  PMNTNMBR  from  PM10400)  and  PM10200.DOCTYPE = 6 )   or  PM10200.VCHRNMBR  IN  (select  VCHNUMWK  from  PM10000  where  DOCTYPE > 3)  and  PM10200.DOCTYPE < 6 )  or  PM10200.VCHRNMBR  IN  ( select  PM20100.VCHRNMBR  from  PM20100,PM10200  where  PM20100.VCHRNMBR = PM10200.VCHRNMBR  and  PM20100.DOCTYPE = PM10200.DOCTYPE  and  PM20100.APTVCHNM = PM10200.APTVCHNM  and  PM20100.APTODCTY = PM10200.APTODCTY ) )   delete  #HISTTEMP  from  PM20100  where  #HISTTEMP.VCHRNMBR = PM20100.VCHRNMBR  and  #HISTTEMP.DOCTYPE = PM20100.DOCTYPE  and  #HISTTEMP.DOCTYPE > 3   update  #HISTTEMP  set  HISTORY = 1  where  (@history = 1  or  (select  REPRNTNT  from  SY01000  where  SY01000.TRXSRCPX = #HISTTEMP.TRXSORCE  and  SY01000.SERIES = 4) = 1   or  (select  KPTRXHST  from  PM00200  where  PM00200.VENDORID = #HISTTEMP.VENDORID) = 1  or  (select  abs(sign(isnull(Company_Options, 0) & @MS_ITEM_7))  from  DYNAMICS.dbo.SY01500  where  DYNAMICS.dbo.SY01500.INTERID = DB_NAME()) = 1)   insert into  PM30600  (DOCTYPE,  VCHRNMBR,  DSTSQNUM,  CNTRLTYP,  CRDTAMNT,  DEBITAMT,  DSTINDX,  DISTTYPE,  CHANGED,  USERID,  PSTGSTUS,  VENDORID,  TRXSORCE,  PSTGDATE,  CURNCYID,  CURRNIDX,  ORCRDAMT,  ORDBTAMT,  APTVCHNM,  APTODCTY,  SPCLDIST,  DistRef)  select  #HISTTEMP.DOCTYPE,  PM10100.VCHRNMBR,  PM10100.DSTSQNUM,  PM10100.CNTRLTYP,  PM10100.CRDTAMNT,  PM10100.DEBITAMT,  PM10100.DSTINDX,  PM10100.DISTTYPE,  PM10100.CHANGED,  PM10100.USERID,  PM10100.PSTGSTUS,  PM10100.VENDORID,  PM10100.TRXSORCE,  PM10100.PSTGDATE,  PM10100.CURNCYID,  PM10100.CURRNIDX,  PM10100.ORCRDAMT,  PM10100.ORDBTAMT,  PM10100.APTVCHNM,  PM10100.APTODCTY,  PM10100.SPCLDIST,  PM10100.DistRef  from  PM10100 inner join #HISTTEMP  on  PM10100.VCHRNMBR = #HISTTEMP.VCHRNMBR and PM10100.CNTRLTYP = #HISTTEMP.CNTRLTYP  where #HISTTEMP.HISTORY = 1  delete  PM10100 where  exists  (select  PM10100.VCHRNMBR  from   #HISTTEMP  where  PM10100.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  PM10100.CNTRLTYP = #HISTTEMP.CNTRLTYP)  and exists ( select   VCHRNMBR, CNTRLTYP  from  PM30600  where  VCHRNMBR = PM10100.VCHRNMBR  and CNTRLTYP = PM10100.CNTRLTYP)   insert into  PM30700  (VENDORID,  VCHRNMBR,  BACHNUMB,  TAXDTLID,  TAXAMNT,  ACTINDX,  TRXSORCE,  ORTAXAMT,  ORPURTAX,  ORFRTTAX,  ORMSCTAX,  ORTXBPUR,  ORTOTPUR,  CURRNIDX )  select  PM10500.VENDORID,  PM10500.VCHRNMBR,  PM10500.BACHNUMB,  PM10500.TAXDTLID,  PM10500.TAXAMNT,  PM10500.ACTINDX,  PM10500.TRXSORCE,  PM10500.ORTAXAMT,  PM10500.ORPURTAX,  PM10500.ORFRTTAX,  PM10500.ORMSCTAX,  PM10500.ORTXBPUR,  PM10500.ORTOTPUR,  PM10500.CURRNIDX   from  PM10500,  #HISTTEMP  where  EXISTS  (select  t.VCHRNMBR  from  PM10500 as t  where  PM10500.VCHRNMBR = #HISTTEMP.VCHRNMBR   and PM10500.DOCTYPE = #HISTTEMP.DOCTYPE )   and  #HISTTEMP.HISTORY = 1   delete  PM10500  where  EXISTS  (select  t.VCHRNMBR  from  PM10500 as t,  #HISTTEMP  where  PM10500.VCHRNMBR = #HISTTEMP.VCHRNMBR  and PM10500.DOCTYPE = #HISTTEMP.DOCTYPE )    insert into  PM30300(  APTVCHNM,  VCHRNMBR,  VENDORID,  APTODCTY,  DOCTYPE,  APFRDCNM,  APTODCNM,  APPLDAMT,  DISTKNAM,  WROFAMNT,  PPSAMDED,  GSTDSAMT,  TAXDTLID,  POSTED,  TEN99AMNT,  DOCDATE,  APTODCDT,  DISAVTKN,  DATE1,  FROMCURR,  CURNCYID,  CURRNIDX,  ORAPPAMT,  ORDISTKN,  ORWROFAM,  ORDATKN,  RLGANLOS,  APYFRMRNDAMT,  APYTORNDAMT,  APYTORNDDISC,  GLPOSTDT )  select  PM10200.APTVCHNM,  PM10200.VCHRNMBR,  PM10200.VENDORID,  PM10200.APTODCTY,  PM10200.DOCTYPE,  PM10200.APFRDCNM,  PM10200.APTODCNM,  PM10200.APPLDAMT,  PM10200.DISTKNAM,  PM10200.WROFAMNT,  PM10200.PPSAMDED,  PM10200.GSTDSAMT,  PM10200.TAXDTLID,  PM10200.POSTED,  PM10200.TEN99AMNT,  PM10200.DOCDATE,  PM10200.APTODCDT,  PM10200.DISAVTKN,  PM10200.DATE1,  PM10200.FROMCURR,  PM10200.CURNCYID,  PM10200.CURRNIDX,  PM10200.ORAPPAMT,  PM10200.ORDISTKN,  PM10200.ORWROFAM,  PM10200.ORDATKN,  PM10200.RLGANLOS,  PM10200.APYFRMRNDAMT,  PM10200.APYTORNDAMT,  PM10200.APYTORNDDISC,  PM10200.GLPOSTDT  from  PM10200 inner join #HISTTEMP  on  PM10200.VCHRNMBR = #HISTTEMP.VCHRNMBR  and PM10200.DOCTYPE = #HISTTEMP.DOCTYPE  and not exists  (select   VCHRNMBR, DOCTYPE, APTVCHNM, APTODCTY  from  PM30300  where  VCHRNMBR = PM10200.VCHRNMBR  and DOCTYPE = PM10200.DOCTYPE  and APTVCHNM = PM10200.APTVCHNM  and APTODCTY = PM10200.APTODCTY)  and #HISTTEMP.HISTORY = 1  insert into  PM30300(  APTVCHNM,  VCHRNMBR,  VENDORID,  APTODCTY,  DOCTYPE,  APFRDCNM,  APTODCNM,  APPLDAMT,  DISTKNAM,  WROFAMNT,  PPSAMDED,  GSTDSAMT,  TAXDTLID,  POSTED,  TEN99AMNT,  DOCDATE,  APTODCDT,  DISAVTKN,  DATE1,  FROMCURR,  CURNCYID,  CURRNIDX,  ORAPPAMT,  ORDISTKN,  ORWROFAM,  ORDATKN,  RLGANLOS,  APYFRMRNDAMT,  APYTORNDAMT,  APYTORNDDISC,  GLPOSTDT )  select  PM10200.APTVCHNM,  PM10200.VCHRNMBR,  PM10200.VENDORID,  PM10200.APTODCTY,  PM10200.DOCTYPE,  PM10200.APFRDCNM,  PM10200.APTODCNM,  PM10200.APPLDAMT,  PM10200.DISTKNAM,  PM10200.WROFAMNT,  PM10200.PPSAMDED,  PM10200.GSTDSAMT,  PM10200.TAXDTLID,  PM10200.POSTED,  PM10200.TEN99AMNT,  PM10200.DOCDATE,  PM10200.APTODCDT,  PM10200.DISAVTKN,  PM10200.DATE1,  PM10200.FROMCURR,  PM10200.CURNCYID,  PM10200.CURRNIDX,  PM10200.ORAPPAMT,  PM10200.ORDISTKN,  PM10200.ORWROFAM,  PM10200.ORDATKN,  PM10200.RLGANLOS,  PM10200.APYFRMRNDAMT,  PM10200.APYTORNDAMT,  PM10200.APYTORNDDISC,  PM10200.GLPOSTDT  from  PM10200 inner join #HISTTEMP  on   PM10200.APTVCHNM = #HISTTEMP.VCHRNMBR  and PM10200.APTODCTY = #HISTTEMP.DOCTYPE  and not exists  (select   VCHRNMBR, DOCTYPE, APTVCHNM, APTODCTY  from  PM30300  where   VCHRNMBR = PM10200.VCHRNMBR  and DOCTYPE = PM10200.DOCTYPE  and APTVCHNM = PM10200.APTVCHNM  and APTODCTY = PM10200.APTODCTY)  and #HISTTEMP.HISTORY = 1   delete  PM10200  where  exists  (select   VCHRNMBR  from  #HISTTEMP  where  PM10200.VCHRNMBR = #HISTTEMP.VCHRNMBR  and PM10200.DOCTYPE = #HISTTEMP.DOCTYPE)  and exists  (select  #HISTTEMP.VCHRNMBR  from  #HISTTEMP  where  PM10200.APTVCHNM = #HISTTEMP.VCHRNMBR  and PM10200.APTODCTY = #HISTTEMP.DOCTYPE)   delete  PM00400  where  CNTRLNUM  IN  (select  CNTRLNUM  from  #HISTTEMP  where  PM00400.CNTRLNUM = #HISTTEMP.VCHRNMBR  and  PM00400.CNTRLTYP = #HISTTEMP.CNTRLTYP  and  HISTORY = 0  )   update  PM00400  set  PM00400.DCSTATUS = 3  from  #HISTTEMP  where  PM00400.CNTRLNUM = #HISTTEMP.VCHRNMBR  and  PM00400.CNTRLTYP = #HISTTEMP.CNTRLTYP   insert into  PM30200  (VCHRNMBR,  VENDORID,  DOCTYPE,  DOCDATE,  DOCNUMBR,  DOCAMNT,  CURTRXAM,  DISTKNAM,  DISCAMNT,  BACHNUMB,  TRXSORCE,  BCHSOURC,  DISCDATE,  DUEDATE,  PORDNMBR,  TEN99AMNT,  WROFAMNT,  DISAMTAV,  TRXDSCRN,  UN1099AM,  BKTPURAM,  BKTFRTAM,  BKTMSCAM,  VOIDED,  HOLD,  CHEKBKID,  DINVPDOF,  PPSAMDED,  PPSTAXRT,  PGRAMSBJ,  GSTDSAMT,  POSTEDDT,  PTDUSRID,  MODIFDT,  MDFUSRID,  PYENTTYP,  CARDNAME,  PRCHAMNT,  TRDISAMT,  MSCCHAMT,  FRTAMNT,  TAXAMNT,  TTLPYMTS,  CURNCYID,  PYMTRMID,  SHIPMTHD,  TAXSCHID,  PSTGDATE,  DISAVTKN,  CNTRLTYP,  NOTEINDX,  RETNAGAM,  DSCDLRAM,  PCHSCHID,  FRTSCHID,  MSCSCHID,  PRCTDISC,  ICTRX,  Tax_Date,  PRCHDATE,  CORRCTN,  SIMPLIFD,  APLYWITH,  Electronic,  ECTRX)  select  PM20000.VCHRNMBR,  PM20000.VENDORID,  PM20000.DOCTYPE,  PM20000.DOCDATE,  PM20000.DOCNUMBR,  PM20000.DOCAMNT,  PM20000.CURTRXAM,  PM20000.DISTKNAM,  PM20000.DISCAMNT,  PM20000.BACHNUMB,  PM20000.TRXSORCE,  PM20000.BCHSOURC,  PM20000.DISCDATE,  PM20000.DUEDATE,  PM20000.PORDNMBR,  PM20000.TEN99AMNT,  PM20000.WROFAMNT,  PM20000.DISAMTAV,  PM20000.TRXDSCRN,  PM20000.UN1099AM,  PM20000.BKTPURAM,  PM20000.BKTFRTAM,  PM20000.BKTMSCAM,  PM20000.VOIDED,  PM20000.HOLD,  PM20000.CHEKBKID,  PM20000.DINVPDOF,  PM20000.PPSAMDED,  PM20000.PPSTAXRT,  PM20000.PGRAMSBJ,  PM20000.GSTDSAMT,  PM20000.POSTEDDT,  PM20000.PTDUSRID,  PM20000.MODIFDT,  PM20000.MDFUSRID,  PM20000.PYENTTYP,  PM20000.CARDNAME,  PM20000.PRCHAMNT,  PM20000.TRDISAMT,  PM20000.MSCCHAMT,  PM20000.FRTAMNT,  PM20000.TAXAMNT,  PM20000.TTLPYMTS,  PM20000.CURNCYID,  PM20000.PYMTRMID,  PM20000.SHIPMTHD,  PM20000.TAXSCHID,  PM20000.PSTGDATE,  PM20000.DISAVTKN,  PM20000.CNTRLTYP,  PM20000.NOTEINDX,  PM20000.RETNAGAM,  PM20000.DSCDLRAM,  PM20000.PCHSCHID,  PM20000.FRTSCHID,  PM20000.MSCSCHID,  PM20000.PRCTDISC,  PM20000.ICTRX,  PM20000.Tax_Date,  PM20000.PRCHDATE,  PM20000.CORRCTN,  PM20000.SIMPLIFD,  PM20000.APLYWITH,  PM20000.Electronic,  PM20000.ECTRX  from  PM20000,#HISTTEMP  where  PM20000.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  PM20000.DOCTYPE = #HISTTEMP.DOCTYPE   update  MC020103  set  DCSTATUS = @HIST  where  EXISTS  (select  VCHRNMBR  from  #HISTTEMP  where  MC020103.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  MC020103.DOCTYPE = #HISTTEMP.DOCTYPE)   insert into  #CNTRLNUMTEMP  (CNTRLNUM,  DOCTYPE,  VENDORID)  select  VCHRNMBR,  DOCTYPE,  VENDORID  from  PM20000  where  EXISTS  (select  VCHRNMBR  from  #HISTTEMP  where  PM20000.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  PM20000.DOCTYPE = #HISTTEMP.DOCTYPE  and  #HISTTEMP.HISTORY = 1)   if @@rowcount <> 0  begin  exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10491,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP  (CNTRLNUM,  DOCTYPE,  VENDORID)  select  VCHRNMBR,  DOCTYPE,  VENDORID  from  PM20000  where  EXISTS  (select  VCHRNMBR  from  #HISTTEMP  where  PM20000.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  PM20000.DOCTYPE = #HISTTEMP.DOCTYPE  and  #HISTTEMP.HISTORY <> 1)   if @@rowcount <> 0  begin  exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10492,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    delete  PM20000  where  EXISTS  (select  VCHRNMBR  from  #HISTTEMP  where  PM20000.VCHRNMBR = #HISTTEMP.VCHRNMBR  and  PM20000.DOCTYPE = #HISTTEMP.DOCTYPE)  end   set nocount off  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[pmCLMoveFullyApplied] TO [DYNGRP]
GO
