SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreateItemPriceListLine] @I_vITEMNMBR char(30),      @I_vCURNCYID char(15) = '',    @I_vPRCLEVEL char(10) = '',    @I_vUOFM char(8) = '',     @I_vTOQTY numeric(19,5) = 999999999999.00000,  @I_vUOMPRICE numeric(19,5) = 0,    @I_vRNDGAMNT numeric(19,5) = 0,    @I_vROUNDHOW smallint = 0,    @I_vROUNDTO smallint = 1,    @I_vUMSLSOPT smallint = null,    @I_vUpdateIfExists smallint = 1,   @I_vRequesterTrx smallint = 0,    @I_vUSRDEFND1 char(50) = '',        @I_vUSRDEFND2 char(50) = '',        @I_vUSRDEFND3 char(50) = '',        @I_vUSRDEFND4 varchar(8000) = '',   @I_vUSRDEFND5 varchar(8000) = '',   @O_iErrorState int output,    @oErrString varchar(255) output     with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @UOMSCHDL char(10),      @MAXTOQTY numeric(19,5),     @QTYBSUOM numeric(19,5),     @BASEUOFM char(8),      @FROMQTY numeric(19,5),      @STNDCOST numeric(19,5),     @CURRCOST numeric(19,5),     @CMPANYID smallint,      @DECPLQTY smallint,      @iAddItemCurrencyErrState int,     @iAddItemCurrencyErrString varchar(255),   @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @iError int       select  @UOMSCHDL = '',     @MAXTOQTY = 0,     @QTYBSUOM = 0,     @BASEUOFM = '',     @FROMQTY = 0,     @STNDCOST = 0,     @CURRCOST = 0,     @CMPANYID = 0,     @DECPLQTY = 0,     @iAddItemCurrencyErrState = 0,  @iAddItemCurrencyErrString = '',  @iStatus = 0 ,  @iCustomState = 0 ,  @iCustomErrString = '',  @O_oErrorState = 0 ,  @iError = 0,  @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taIVCreateItemPriceListLinePre  @I_vITEMNMBR output,  @I_vCURNCYID output,  @I_vPRCLEVEL output,  @I_vUOFM output,  @I_vTOQTY output,  @I_vUOMPRICE output,  @I_vRNDGAMNT output,  @I_vROUNDHOW output,  @I_vROUNDTO output,  @I_vUMSLSOPT output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomErrString  select @O_iErrorState = 7057    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vITEMNMBR is NULL or  @I_vPRCLEVEL is NULL or  @I_vUOFM is NULL or  @I_vUOMPRICE is NULL or  @I_vRNDGAMNT is NULL or  @I_vROUNDHOW is NULL or  @I_vROUNDTO is NULL or  @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL) begin  select @O_iErrorState = 7058    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vITEMNMBR = UPPER(@I_vITEMNMBR),  @I_vCURNCYID = UPPER(@I_vCURNCYID),  @I_vPRCLEVEL = UPPER(@I_vPRCLEVEL)  if exists(select 1 from IV00105 (nolock) where CURNCYID <> '') begin  if (@I_vCURNCYID = '')  begin  select @O_iErrorState = 7073     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end else begin  select @I_vCURNCYID = '' end  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  if (@I_vITEMNMBR = '') begin  select @O_iErrorState = 7059    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vITEMNMBR <> '') begin  if not exists(select 1 from IV00101 (nolock) where ITEMNMBR = @I_vITEMNMBR)  begin  select @O_iErrorState = 7060    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  select  @UOMSCHDL = UOMSCHDL,  @STNDCOST = STNDCOST,  @CURRCOST = CURRCOST,  @DECPLQTY = DECPLQTY  from IV00101 (nolock) where ITEMNMBR = @I_vITEMNMBR  if (@I_vTOQTY = 999999999999.00000) begin  select @I_vTOQTY =   case  when @DECPLQTY = 2 then 999999999999.90000  when @DECPLQTY = 3 then 999999999999.99000  when @DECPLQTY = 4 then 999999999999.99900  when @DECPLQTY = 5 then 999999999999.99990  when @DECPLQTY = 6 then 999999999999.99999  else @I_vTOQTY  end end  if (@I_vUMSLSOPT is null) begin   if (@DECPLQTY > 1)  begin  select @I_vUMSLSOPT = 3   end end  if (@I_vUMSLSOPT is null) begin  if (@DECPLQTY = 1)  begin  select @I_vUMSLSOPT = 2  end end  if (@I_vPRCLEVEL = '') begin  select @O_iErrorState = 7061     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vPRCLEVEL <> '') begin  if not exists(select 1 from IV40800 (nolock) where PRCLEVEL = @I_vPRCLEVEL)  begin  select @O_iErrorState = 7062     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vUOFM = '') begin  select @O_iErrorState = 7063     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vUOFM <> '') begin   if not exists(select 1 from IV40202 (nolock) where UOMSCHDL = @UOMSCHDL and UOFM = @I_vUOFM)  begin  select @O_iErrorState = 7064     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vCURNCYID <> '') begin   if not exists(select 1 from DYNAMICS..MC40200 (nolock) where CURNCYID = @I_vCURNCYID)  begin  select @O_iErrorState = 7074    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vCURNCYID <> '') begin   if not exists(select 1 from DYNAMICS..MC60100 (nolock) where CMPANYID = @CMPANYID and CURNCYID = @I_vCURNCYID and INACTIVE = 0)  begin  select @O_iErrorState = 7075    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vCURNCYID <> '') begin  if (not exists (select 1 from IV00105 (nolock) where ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID))  begin  exec @iStatus = taUpdateCreateItemCurrencyRcd  @I_vITEMNMBR = @I_vITEMNMBR,  @I_vCURNCYID = @I_vCURNCYID,   @I_vUpdateIfExists = 1,  @O_iErrorState = @iAddItemCurrencyErrState output,  @oErrString = @iAddItemCurrencyErrString output  select @iError = @@error  if ((@iStatus <> 0) or (@iAddItemCurrencyErrState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iAddItemCurrencyErrString))  select @O_iErrorState = 7076   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end end  if (@I_vUpdateIfExists = 1) begin  if exists(select 1 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY = @I_vTOQTY)  begin  delete IV00108 where ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY = @I_vTOQTY  if @@error <> 0  begin  select @O_iErrorState = 7136    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if (exists(select 1 from IV00107 (nolock) where  ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM))  begin  delete IV00107 where ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM  if @@error <> 0  begin  select @O_iErrorState = 6642    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end end  if (@I_vTOQTY <= 0)  begin  select @O_iErrorState = 7077     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTOQTY > 999999999999.99999)  begin  select @O_iErrorState = 7078     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTOQTY >= 999999999999.00000) begin  select @MAXTOQTY = isnull(max(TOQTY),0) from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM end  if (@I_vTOQTY <= @MAXTOQTY) begin  select @O_iErrorState = 7079     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vROUNDTO < 1 or @I_vROUNDTO > 4) begin  select @O_iErrorState = 7113     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vROUNDHOW < 0 or @I_vROUNDHOW > 2) begin  select @O_iErrorState = 7112     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vRNDGAMNT < 0)  begin  select @O_iErrorState = 7111     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vRNDGAMNT > 999999999999.99999)  begin  select @O_iErrorState = 7114     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vUMSLSOPT < 1 or @I_vUMSLSOPT > 3)  begin  select @O_iErrorState = 7107     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vUMSLSOPT = 3 and @DECPLQTY = 1) begin  select @O_iErrorState = 6643     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1) begin  select @O_iErrorState = 7080     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@DECPLQTY = 1) begin  select @FROMQTY = isnull(max(TOQTY),0) + 1 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY     end  if (@DECPLQTY = 2) begin  select @FROMQTY = isnull(max(TOQTY),0) + .1 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY   end  if (@DECPLQTY = 3) begin  select @FROMQTY = isnull(max(TOQTY),0) + .01 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY   end  if (@DECPLQTY = 4) begin  select @FROMQTY = isnull(max(TOQTY),0) + .001 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY  end  if (@DECPLQTY = 5) begin  select @FROMQTY = isnull(max(TOQTY),0) + .0001 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY  end  if (@DECPLQTY = 6) begin  select @FROMQTY = isnull(max(TOQTY),0) + .00001 from IV00108 (nolock) where ITEMNMBR = @I_vITEMNMBR and  CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY <= @I_vTOQTY  end  select @BASEUOFM = BASEUOFM from IV40201 (nolock) where UOMSCHDL = @UOMSCHDL  select @QTYBSUOM = QTYBSUOM from IV40202 (nolock) where UOMSCHDL = @UOMSCHDL and UOFM = @I_vUOFM and EQUIVUOM = @BASEUOFM  if (@I_vRequesterTrx < 0 or @I_vRequesterTrx > 1) begin  select @O_iErrorState = 7081     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState = 0) begin  if (not exists(select 1 from IV00107 (nolock) where ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM))  begin  insert IV00107  (  ITEMNMBR,  CURNCYID,  PRCLEVEL,  UOFM,  RNDGAMNT,  ROUNDHOW,  ROUNDTO,  UMSLSOPT,  QTYBSUOM  )  select   @I_vITEMNMBR,    @I_vCURNCYID,    @I_vPRCLEVEL,    @I_vUOFM,    @I_vRNDGAMNT,    case     when @I_vROUNDTO = 1  then 0  when @I_vROUNDTO <> 1 and @I_vROUNDHOW = 0  then 1  else @I_vROUNDHOW  end,  @I_vROUNDTO,    @I_vUMSLSOPT,    @QTYBSUOM    if @@error <> 0  begin  select @O_iErrorState = 7100    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  if (@O_iErrorState = 0) begin  if not exists(select 1 from IV00108 (nolock) where  ITEMNMBR = @I_vITEMNMBR and CURNCYID = @I_vCURNCYID and   PRCLEVEL = @I_vPRCLEVEL and UOFM = @I_vUOFM and TOQTY = @I_vTOQTY)  begin  insert IV00108  (  ITEMNMBR,  CURNCYID,  PRCLEVEL,  UOFM,  TOQTY,  FROMQTY,  UOMPRICE,  QTYBSUOM  )  select  @I_vITEMNMBR,     @I_vCURNCYID,     @I_vPRCLEVEL,     @I_vUOFM,     @I_vTOQTY,     @FROMQTY,     @I_vUOMPRICE,     @QTYBSUOM     if @@error <> 0  begin  select @O_iErrorState = 7082    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  select @O_iErrorState = 7083    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taIVCreateItemPriceListLinePost  @I_vITEMNMBR,  @I_vCURNCYID,  @I_vPRCLEVEL,  @I_vUOFM,  @I_vTOQTY,  @I_vUOMPRICE,  @I_vRNDGAMNT,  @I_vROUNDHOW,  @I_vROUNDTO,  @I_vUMSLSOPT,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomErrString  select @O_iErrorState = 7084    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreateItemPriceListLine] TO [DYNGRP]
GO
