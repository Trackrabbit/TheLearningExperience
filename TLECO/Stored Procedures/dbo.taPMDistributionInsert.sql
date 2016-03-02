SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMDistributionInsert] @I_vDOCTYPE smallint,   @I_vVCHNUMWK char(17),   @I_vVENDORID char(15),   @I_vACTINDX int,    @I_vDEBITAMT numeric(19,5),  @I_vCRDTAMNT numeric(19,5),  @I_vDISTTYPE smallint,   @I_vCURRNIDX smallint,   @I_vCURNCYID char(15),   @I_vDECPLCUR int,    @I_vTRXSORCE char(13),   @I_vDistRef char(30),   @I_vPTDUSRID char(15),   @I_vRATETPID char(15),    @I_vXCHGRATE numeric(19,7),  @I_vEXCHDATE datetime,   @I_vEXPNDATE datetime,    @I_vEXGTBLID char(15),   @I_vTIME1 datetime,    @I_vORDBTAMT numeric(19,5),  @I_vORCRDAMT numeric(19,5),  @I_vRTCLCMTD smallint,   @O_iErrorState int output,  @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @INTERID char(5),  @CURRNIDX smallint,    @CURNCYID char(15),    @CNTRLTYP int,  @DSTSQNUM int,  @IsMC tinyint,  @DOCDATE datetime,  @DTAREF char(25),  @iStatus int,  @O_oErrorState int,  @updated tinyint,    @GROUPAMT numeric(19,5)  select  @CNTRLTYP = 0,  @CURRNIDX = 0,     @CURNCYID = '',     @O_iErrorState = 0,  @DSTSQNUM = 0,  @IsMC = 0,  @DOCDATE = '',  @DTAREF = '',  @iStatus = 0,  @O_oErrorState = 0,  @updated = 0,  @GROUPAMT = 0  if(  @I_vDOCTYPE  is NULL or  @I_vVCHNUMWK is NULL or  @I_vACTINDX  is NULL or  @I_vVENDORID is NULL or  @I_vDEBITAMT is NULL or  @I_vCRDTAMNT is NULL or  @I_vDISTTYPE is NULL or  @I_vCURRNIDX is NULL or  @I_vCURNCYID is NULL or  @I_vDECPLCUR is NULL or    @I_vDistRef  is NULL or  @I_vPTDUSRID is NULL or  @I_vTRXSORCE is NULL or  @I_vEXPNDATE is NULL or    @I_vEXCHDATE is NULL or    @I_vXCHGRATE is NULL or    @I_vRATETPID is NULL or    @I_vEXGTBLID is NULL or    @I_vTIME1    is NULL or    @I_vORCRDAMT is NULL or    @I_vORDBTAMT is NULL or    @I_vRTCLCMTD is NULL ) begin  select @O_iErrorState = 666    return (@O_iErrorState) end  if(  @I_vDOCTYPE = 0 or  @I_vVCHNUMWK = '' or  @I_vDISTTYPE = 0 ) begin  select @O_iErrorState = 667    return(@O_iErrorState) end  select  @I_vVENDORID = UPPER(@I_vVENDORID)  select @INTERID = db_name()  if ( @I_vDOCTYPE = 6 ) begin  select @CNTRLTYP = 1 end  select  @CURRNIDX = FUNCRIDX, @CURNCYID = FUNLCURR from MC40000 (nolock)  if ((@I_vCURNCYID <> @CURNCYID) and (@I_vCURRNIDX <> @CURRNIDX))  select @IsMC = 1  select @DSTSQNUM = isnull(max(DSTSQNUM),0) + 16384 from PM10100 (nolock) where CNTRLTYP = @CNTRLTYP   and VCHRNMBR = @I_vVCHNUMWK and VENDORID = @I_vVENDORID  if not exists(select 1 from PM10100 (nolock)  where VCHRNMBR = @I_vVCHNUMWK and  CNTRLTYP = @CNTRLTYP  and  DSTINDX  = @I_vACTINDX  and  DISTTYPE = @I_vDISTTYPE) begin  insert into PM10100  (  VCHRNMBR,  DSTSQNUM,  CNTRLTYP,  CRDTAMNT,  DEBITAMT,  DSTINDX,  DISTTYPE,  CHANGED,   USERID,  PSTGSTUS,   VENDORID,  TRXSORCE,  PSTGDATE,  INTERID,  CURNCYID,  CURRNIDX,  ORCRDAMT,     ORDBTAMT,     APTVCHNM,  APTODCTY,  SPCLDIST,  RATETPID,     EXGTBLID,     DistRef,  XCHGRATE,     EXCHDATE,     TIME1,      RTCLCMTD,     DECPLACS,  EXPNDATE,     ICCURRID,            ICCURRIX,     DENXRATE,  MCTRXSTT,   CorrespondingUnit  )  select  @I_vVCHNUMWK,     @DSTSQNUM,      @CNTRLTYP,       @I_vCRDTAMNT,     @I_vDEBITAMT,     @I_vACTINDX,     @I_vDISTTYPE,     0,        '',         0,        @I_vVENDORID,     @I_vTRXSORCE,     '',        @INTERID,      @I_vCURNCYID,     @I_vCURRNIDX,     case @IsMC      when 1  then @I_vORCRDAMT  else 0      end,       case @IsMC      when 1  then @I_vORDBTAMT   else 0  end,  '',        0,        0,        case @I_vDISTTYPE    when 16 then ''  else @I_vRATETPID  end,  case @I_vDISTTYPE    when 16 then ''  else @I_vEXGTBLID  end,  '',        case @I_vDISTTYPE    when 16 then 1  else @I_vXCHGRATE  end,  case @I_vDISTTYPE    when 16 then ''  else @I_vEXCHDATE  end,  case @I_vDISTTYPE    when 16 then ''  else @I_vTIME1  end,  case         WHEN @I_vRTCLCMTD = - 1  THEN 0  ElSE @I_vRTCLCMTD  end,   @I_vDECPLCUR,          case @I_vDISTTYPE    when 16 then ''  else @I_vEXPNDATE  end,   @CURNCYID,            @CURRNIDX,      0,        0,         ''        if (@@error <> 0)  begin  select @O_iErrorState = 685     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end else begin  update PM10100 set  CRDTAMNT = CRDTAMNT + @I_vCRDTAMNT,   DEBITAMT = DEBITAMT + @I_vDEBITAMT,  ORCRDAMT = ORCRDAMT + @I_vORCRDAMT,   ORDBTAMT = ORDBTAMT + @I_vORDBTAMT  where   VCHRNMBR = @I_vVCHNUMWK and CNTRLTYP = @CNTRLTYP and  DSTINDX = @I_vACTINDX and DISTTYPE = @I_vDISTTYPE  if (@@error <> 0)  begin  select @O_iErrorState = 827    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  select @updated = 1 end  if exists (select 1 from DTA00300 (nolock) where ACTINDX = @I_vACTINDX) begin  select @DOCDATE =  DOCDATE from PM00400 (nolock) where CNTRLNUM = @I_vVCHNUMWK  exec @iStatus = taMdaInsert  @I_vDOCNUMBR = @I_vVCHNUMWK,  @I_vRMDTYPAL = 0,  @I_vDTASERIES = 4,  @I_vACTINDX = @I_vACTINDX,  @I_vSEQNUMBR = @DSTSQNUM,  @I_vDEBITAMT = @I_vDEBITAMT,  @I_vCRDTAMNT = @I_vCRDTAMNT,  @I_vTRXDATE = @DOCDATE,  @I_vDECPLCUR = @I_vDECPLCUR,  @I_vUpdated = @updated,  @O_iErrorState  = @O_iErrorState output,  @oErrString  = @oErrString output  if @O_iErrorState <> 0 or @@error <> 0 or @iStatus <> 0  begin  select @O_iErrorState = 3499   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMDistributionInsert] TO [DYNGRP]
GO
