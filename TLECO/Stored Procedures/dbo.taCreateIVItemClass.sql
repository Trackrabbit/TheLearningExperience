SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateIVItemClass] @I_vITMCLSCD char(10),      @I_vITMCLSDC char(30),      @I_vDEFLTCLS tinyint = 0,      @I_vITEMTYPE smallint = 1,     @I_vITMTRKOP smallint = 1,     @I_vLOTTYPE char(10) = '',     @I_vLOTEXPWARN tinyint = 0,     @I_vLOTEXPWARNDAYS smallint = 0,   @I_vKPERHIST tinyint = 0,     @I_vKPTRXHST tinyint = 0,     @I_vKPCALHST tinyint = 0,     @I_vKPDSTHST tinyint = 0,     @I_vALWBKORD tinyint = 0 ,     @I_vITMGEDSC char(10) = '',     @I_vTAXOPTNS smallint = 2,     @I_vITMTSHID char(15) = '',     @I_vPurchase_Tax_Options smallint = 2,  @I_vPurchase_Item_Tax_Schedu char(15)='',  @I_vUOMSCHDL char(11) = '',     @I_vVCTNMTHD smallint = 1,     @I_vUSCATVLS_1 char(10) = '',    @I_vUSCATVLS_2 char(10) = '',    @I_vUSCATVLS_3 char(10) = '',    @I_vUSCATVLS_4 char(10) = '',    @I_vUSCATVLS_5 char(10) = '',    @I_vUSCATVLS_6 char(10) = '',    @I_vDECPLQTY smallint=1,     @I_vInventory_Acct char(75) = '',   @I_vInventory_Offset_Acct char(75)='',  @I_vCost_of_Goods_Sold_Acct char(75)='', @I_vSales_Acct char(75) = '',    @I_vMarkdowns_Acct char(75) = '',   @I_vSales_Returns_Acct char(75)='',   @I_vIn_Use_Acct char(75) = '',    @I_vIn_Service_Acct char(75) = '',   @I_vDamaged_Acct char(75) = '',    @I_vVariance_Acct char(75) = '',   @I_vDrop_Ship_Items_Acct char(75)='',  @I_vPurchase_Price_Variance_Acct char(75)='',  @I_vUnrealized_Purchase_Price_Variance_Acct char(75)='',  @I_vInventory_Returns_Acct char(75)='',  @I_vAssembly_Variance_Acct char(75)='',  @I_vPRCLEVEL char(10) = '',     @I_vPriceGroup char(10) = '',    @I_vPRICMTHD smallint = 1,      @I_vRevalue_Inventory tinyint = 1,   @I_vTolerance_Percentage int = 0,   @I_vUseQtyOverageTolerance tinyint = 0,   @I_vUseQtyShortageTolerance tinyint = 0,   @I_vQtyOverTolerancePercent int = 0,   @I_vQtyShortTolerancePercent int = 0,   @I_vUSRDEFND1 char(50) = '',    @I_vUSRDEFND2 char(50) = '',    @I_vUSRDEFND3 char(50) = '',    @I_vUSRDEFND4 varchar(8000) = '',   @I_vUSRDEFND5 varchar(8000) = '',   @O_iErrorState int output,     @oErrString varchar(255) output     with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @NOTEINDX numeric(19,5),    @CMPANYID smallint,     @IVIVINDX int,   @IVIVOFIX int,  @IVCOGSIX int,  @IVSLSIDX int,  @IVSLDSIX int,  @IVSLRNIX int,  @IVINUSIX int,  @IVINSVIX int,  @IVDMGIDX int,  @IVVARIDX int,  @DPSHPIDX int,  @PURPVIDX int,  @UPPVIDX int,  @IVRETIDX int,  @ASMVRIDX int,  @iGetNextNoteIdxErrState int,  @iAddCodeErrState int,     @iStatus int,       @iCustomState int,  @O_oErrorState int,  @iCustomErrString varchar(255),  @iError int      select  @CMPANYID = 0,      @IVIVINDX = 0,   @IVIVOFIX = 0,  @IVCOGSIX = 0,  @IVSLSIDX = 0,  @IVSLDSIX = 0,  @IVSLRNIX = 0,  @IVINUSIX = 0,  @IVINSVIX = 0,  @IVDMGIDX = 0,  @IVVARIDX = 0,  @DPSHPIDX = 0,  @PURPVIDX = 0,  @UPPVIDX = 0,  @IVRETIDX = 0,  @ASMVRIDX = 0,  @iStatus = 0,  @iAddCodeErrState =0,  @iCustomState = 0,  @O_oErrorState = 0,  @O_iErrorState = 0     if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateIVItemClassPre  @I_vITMCLSCD  output,  @I_vITMCLSDC  output,  @I_vDEFLTCLS  output,  @I_vITEMTYPE  output,  @I_vITMTRKOP  output,  @I_vLOTTYPE  output,  @I_vLOTEXPWARN output,  @I_vLOTEXPWARNDAYS output,  @I_vKPERHIST  output,  @I_vKPTRXHST  output,  @I_vKPCALHST  output,  @I_vKPDSTHST  output,  @I_vALWBKORD  output,  @I_vITMGEDSC  output,  @I_vTAXOPTNS  output,  @I_vITMTSHID  output,  @I_vPurchase_Tax_Options  output,  @I_vPurchase_Item_Tax_Schedu  output,  @I_vUOMSCHDL  output,  @I_vVCTNMTHD  output,  @I_vUSCATVLS_1  output,  @I_vUSCATVLS_2  output,  @I_vUSCATVLS_3  output,  @I_vUSCATVLS_4  output,  @I_vUSCATVLS_5  output,  @I_vUSCATVLS_6  output,  @I_vDECPLQTY  output,  @I_vInventory_Acct output,  @I_vInventory_Offset_Acct output,  @I_vCost_of_Goods_Sold_Acct output,  @I_vSales_Acct  output,  @I_vMarkdowns_Acct output,  @I_vSales_Returns_Acct output,  @I_vIn_Use_Acct output,  @I_vIn_Service_Acct output,  @I_vDamaged_Acct output,  @I_vVariance_Acct output,  @I_vDrop_Ship_Items_Acct output,  @I_vPurchase_Price_Variance_Acct output,  @I_vUnrealized_Purchase_Price_Variance_Acct output,  @I_vInventory_Returns_Acct output,  @I_vAssembly_Variance_Acct output,  @I_vPRCLEVEL output,  @I_vPriceGroup output,  @I_vPRICMTHD output,  @I_vRevalue_Inventory output,  @I_vTolerance_Percentage output,  @I_vUseQtyOverageTolerance output,  @I_vUseQtyShortageTolerance output,  @I_vQtyOverTolerancePercent output,  @I_vQtyShortTolerancePercent output,  @I_vUSRDEFND1  output,  @I_vUSRDEFND2  output,  @I_vUSRDEFND3  output,  @I_vUSRDEFND4  output,  @I_vUSRDEFND5  output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 6542     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (   @I_vITMCLSCD is null or   @I_vITMCLSDC is null or   @I_vDEFLTCLS is null or   @I_vITEMTYPE is null or   @I_vITMTRKOP is null or   @I_vLOTTYPE is null or  @I_vLOTEXPWARN is null or  @I_vLOTEXPWARNDAYS is null or  @I_vKPERHIST is null or   @I_vKPTRXHST is null or   @I_vKPCALHST is null or   @I_vKPDSTHST is null or   @I_vALWBKORD is null or   @I_vITMGEDSC is null or   @I_vTAXOPTNS is null or   @I_vITMTSHID is null or   @I_vPurchase_Tax_Options is null or   @I_vPurchase_Item_Tax_Schedu is null or   @I_vUOMSCHDL is null or   @I_vVCTNMTHD is null or   @I_vUSCATVLS_1  is null or   @I_vUSCATVLS_2  is null or   @I_vUSCATVLS_3  is null or   @I_vUSCATVLS_4  is null or   @I_vUSCATVLS_5  is null or   @I_vUSCATVLS_6  is null or   @I_vDECPLQTY is null or   @I_vInventory_Acct is null or   @I_vInventory_Offset_Acct is null or   @I_vCost_of_Goods_Sold_Acct is null or   @I_vSales_Acct  is null or   @I_vMarkdowns_Acct is null or   @I_vSales_Returns_Acct is null or   @I_vIn_Use_Acct is null or   @I_vIn_Service_Acct is null or   @I_vDamaged_Acct is null or   @I_vVariance_Acct is null or   @I_vDrop_Ship_Items_Acct is null or   @I_vPurchase_Price_Variance_Acct is null or   @I_vUnrealized_Purchase_Price_Variance_Acct is null or   @I_vInventory_Returns_Acct is null or   @I_vAssembly_Variance_Acct is null or   @I_vPRCLEVEL  is null or   @I_vPriceGroup  is null or   @I_vPRICMTHD  is null or   @I_vRevalue_Inventory  is null or   @I_vTolerance_Percentage is null or   @I_vUseQtyOverageTolerance is null or  @I_vUseQtyShortageTolerance is null or  @I_vQtyOverTolerancePercent is null or  @I_vQtyShortTolerancePercent is null or  @I_vUSRDEFND1  is null or   @I_vUSRDEFND2  is null or   @I_vUSRDEFND3  is null or   @I_vUSRDEFND4  is null or   @I_vUSRDEFND5  is null   ) begin  select @O_iErrorState = 6543    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select  @I_vITMCLSCD = UPPER(@I_vITMCLSCD),  @I_vLOTTYPE  = UPPER(@I_vLOTTYPE),  @I_vITMTSHID = UPPER(@I_vITMTSHID),  @I_vPurchase_Item_Tax_Schedu = UPPER(@I_vPurchase_Item_Tax_Schedu),  @I_vUOMSCHDL = UPPER(@I_vUOMSCHDL),  @I_vInventory_Acct = UPPER(@I_vInventory_Acct),   @I_vInventory_Offset_Acct = UPPER(@I_vInventory_Offset_Acct),  @I_vCost_of_Goods_Sold_Acct = UPPER(@I_vCost_of_Goods_Sold_Acct),   @I_vSales_Acct = UPPER(@I_vSales_Acct),   @I_vMarkdowns_Acct = UPPER(@I_vMarkdowns_Acct),   @I_vSales_Returns_Acct = UPPER(@I_vSales_Returns_Acct),   @I_vIn_Use_Acct = UPPER(@I_vIn_Use_Acct),   @I_vIn_Service_Acct = UPPER(@I_vIn_Service_Acct),   @I_vDamaged_Acct = UPPER(@I_vDamaged_Acct),   @I_vVariance_Acct = UPPER(@I_vVariance_Acct),   @I_vDrop_Ship_Items_Acct = UPPER(@I_vDrop_Ship_Items_Acct),   @I_vPurchase_Price_Variance_Acct = UPPER(@I_vPurchase_Price_Variance_Acct),   @I_vUnrealized_Purchase_Price_Variance_Acct = UPPER(@I_vUnrealized_Purchase_Price_Variance_Acct),   @I_vInventory_Returns_Acct = UPPER(@I_vInventory_Returns_Acct),   @I_vAssembly_Variance_Acct = UPPER(@I_vAssembly_Variance_Acct),   @I_vPRCLEVEL = UPPER(@I_vPRCLEVEL),   @I_vPriceGroup = UPPER(@I_vPriceGroup)   select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 6544   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if ( @I_vITMCLSCD = '' ) begin  select @O_iErrorState = 6545    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITMCLSDC = '' ) begin  select @O_iErrorState = 6546    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEFLTCLS < 0 or @I_vDEFLTCLS > 1 ) begin  select @O_iErrorState = 6547     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEFLTCLS = 1 ) begin  if exists(select 1 from IV40400 (nolock) where DEFLTCLS = 1)  begin  select @O_iErrorState = 6548     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vITEMTYPE < 1 or @I_vITEMTYPE > 6 ) begin  select @O_iErrorState = 6549     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITMTRKOP < 1 or @I_vITMTRKOP > 3 ) begin  select @O_iErrorState = 6550     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vLOTTYPE <> '' ) begin  if not exists(select 1 from IV40500 (nolock) where LOTTYPE = @I_vLOTTYPE)  begin  select @O_iErrorState = 6551     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vITMTRKOP <> 3 ) and ( @I_vLOTTYPE <> '' ) begin  select @O_iErrorState = 6552     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vITMTRKOP = 3) begin  if (@I_vLOTEXPWARN not in (0,1))  begin  select @O_iErrorState = 8685     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   if (@I_vLOTEXPWARNDAYS < 0 or  @I_vLOTEXPWARNDAYS > 999)  begin  select @O_iErrorState = 8686     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   if (@I_vLOTEXPWARN = 0)  begin  select @I_vLOTEXPWARNDAYS = 0  end end else begin  select @I_vLOTEXPWARN = 0,  @I_vLOTEXPWARNDAYS = 0 end  if ( @I_vKPERHIST < 0 or @I_vKPERHIST > 1 ) begin  select @O_iErrorState = 6553     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vKPTRXHST < 0 or @I_vKPTRXHST > 1 ) begin  select @O_iErrorState = 6554     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vKPCALHST < 0 or @I_vKPCALHST > 1 ) begin  select @O_iErrorState = 6555     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vKPDSTHST < 0 or @I_vKPDSTHST > 1 ) begin  select @O_iErrorState = 6556     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vALWBKORD < 0 or @I_vALWBKORD > 1 ) begin  select @O_iErrorState = 6557     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vTAXOPTNS < 1 or @I_vTAXOPTNS > 3 )  begin  select @O_iErrorState = 6558     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITMTSHID <> '' ) begin  if not exists(select 1 from TX00101 (nolock) where TAXSCHID = @I_vITMTSHID)  begin  select @O_iErrorState = 6559     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vTAXOPTNS <> 1 ) and ( @I_vITMTSHID <> '' ) begin  select @O_iErrorState = 6560     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vPurchase_Tax_Options < 1 or @I_vPurchase_Tax_Options > 3 )  begin  select @O_iErrorState = 6561     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vPurchase_Item_Tax_Schedu <> '' ) begin  if not exists(select 1 from TX00101 (nolock) where TAXSCHID = @I_vPurchase_Item_Tax_Schedu)  begin  select @O_iErrorState = 6562     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vPurchase_Tax_Options <> 1 ) and ( @I_vPurchase_Item_Tax_Schedu <> '' ) begin  select @O_iErrorState = 6563     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUOMSCHDL <> '' ) begin  if not exists(select 1 from IV40201 (nolock) where UOMSCHDL = @I_vUOMSCHDL)  begin  select @O_iErrorState = 6564     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vVCTNMTHD < 1 or @I_vVCTNMTHD > 6 ) begin  select @O_iErrorState = 6565     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUSCATVLS_1 <> '' ) begin  if not exists(select 1 from IV40600 (nolock) where USCATVAL = @I_vUSCATVLS_1 and USCATNUM = 1)  begin  select @O_iErrorState = 6566     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vUSCATVLS_2 <> '' ) begin  if not exists(select 1 from IV40600 (nolock) where USCATVAL = @I_vUSCATVLS_2 and USCATNUM = 2)  begin  select @O_iErrorState = 6567     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vUSCATVLS_3 <> '' ) begin  if not exists(select 1 from IV40600 (nolock) where USCATVAL = @I_vUSCATVLS_3 and USCATNUM = 3)  begin  select @O_iErrorState = 6568     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vDECPLQTY < 1 or @I_vDECPLQTY > 6 )  begin  select @O_iErrorState = 6569     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if ( @I_vInventory_Acct <> '' ) begin  select @IVIVINDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vInventory_Acct  if (@IVIVINDX is null) or (@IVIVINDX = 0)  begin  select @O_iErrorState = 6570      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vInventory_Offset_Acct <> '' ) begin  select @IVIVOFIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vInventory_Offset_Acct  if (@IVIVOFIX is null) or (@IVIVOFIX = 0)  begin  select @O_iErrorState = 6571      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vCost_of_Goods_Sold_Acct <> '' ) begin  select @IVCOGSIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vCost_of_Goods_Sold_Acct  if (@IVCOGSIX is null) or (@IVCOGSIX = 0)  begin  select @O_iErrorState = 6572      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vSales_Acct <> '' ) begin  select @IVSLSIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vSales_Acct  if (@IVSLSIDX is null) or (@IVSLSIDX = 0)  begin  select @O_iErrorState = 6573      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end if ( @I_vMarkdowns_Acct <> '' ) begin  select @IVSLDSIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vMarkdowns_Acct  if (@IVSLDSIX is null) or (@IVSLDSIX = 0)  begin  select @O_iErrorState = 6574      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vSales_Returns_Acct <> '' ) begin  select @IVSLRNIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vSales_Returns_Acct  if (@IVSLRNIX is null) or (@IVSLRNIX = 0)  begin  select @O_iErrorState = 6575      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vIn_Use_Acct <> '' ) begin  select @IVINUSIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vIn_Use_Acct  if (@IVINUSIX is null) or (@IVINUSIX = 0)  begin  select @O_iErrorState = 6576      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vIn_Service_Acct <> '' ) begin  select @IVINSVIX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vIn_Service_Acct  if (@IVINSVIX is null) or (@IVINSVIX = 0)  begin  select @O_iErrorState = 6577      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vDamaged_Acct <> '' ) begin  select @IVDMGIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vDamaged_Acct  if (@IVDMGIDX is null) or (@IVDMGIDX = 0)  begin  select @O_iErrorState = 6578      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vVariance_Acct <> '' ) begin  select @IVVARIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vVariance_Acct  if (@IVVARIDX is null) or (@IVVARIDX = 0)  begin  select @O_iErrorState = 6579      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vDrop_Ship_Items_Acct <> '' ) begin  select @DPSHPIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vDrop_Ship_Items_Acct  if (@DPSHPIDX is null) or (@DPSHPIDX = 0)  begin  select @O_iErrorState = 6580      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vPurchase_Price_Variance_Acct <> '' ) begin  select @PURPVIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vPurchase_Price_Variance_Acct  if (@PURPVIDX is null) or (@PURPVIDX = 0)  begin  select @O_iErrorState = 6581      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vUnrealized_Purchase_Price_Variance_Acct <> '' ) begin  select @UPPVIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vUnrealized_Purchase_Price_Variance_Acct  if (@UPPVIDX is null) or (@UPPVIDX = 0)  begin  select @O_iErrorState = 6582      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vInventory_Returns_Acct <> '' ) begin  select @IVRETIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vInventory_Returns_Acct  if (@IVRETIDX is null) or (@IVRETIDX = 0)  begin  select @O_iErrorState = 6583      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vAssembly_Variance_Acct <> '' ) begin  select @ASMVRIDX = ACTINDX from GL00105 a (nolock) where a.ACTNUMST = @I_vAssembly_Variance_Acct  if (@ASMVRIDX is null) or (@ASMVRIDX = 0)  begin  select @O_iErrorState = 6584      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end   if ( @I_vPRCLEVEL <> '' )  begin  if not exists(select 1 from IV40800 (nolock) where PRCLEVEL = @I_vPRCLEVEL)  begin  select @O_iErrorState = 6585     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vPriceGroup <> '' ) begin  if not exists(select 1 from IV40900 (nolock) where PriceGroup = @I_vPriceGroup)  begin  select @O_iErrorState = 6586     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vPRICMTHD < 1 or @I_vPRICMTHD > 6 )  begin  select @O_iErrorState = 6587     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRevalue_Inventory < 0 or @I_vRevalue_Inventory > 1 ) begin  select @O_iErrorState = 6588     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vTolerance_Percentage < 0 or @I_vTolerance_Percentage > 9999.999 )  begin  select @O_iErrorState = 6589     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITEMTYPE = 3 ) and ( @I_vVCTNMTHD <> 1 )  begin  select @O_iErrorState = 6592     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end if ( @I_vITEMTYPE = 3 ) and ( @I_vITMTRKOP <> 1 )  begin  select @O_iErrorState = 6593     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITEMTYPE = 4 ) and ( @I_vVCTNMTHD <> 1 )  begin  select @O_iErrorState = 6594     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end if ( @I_vITEMTYPE = 4 ) and ( @I_vITMTRKOP <> 1 )  begin  select @O_iErrorState = 6595     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITEMTYPE = 5 ) and ( @I_vVCTNMTHD <> 1 )  begin  select @O_iErrorState = 6596     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end if ( @I_vITEMTYPE = 5 ) and ( @I_vITMTRKOP <> 1 )  begin  select @O_iErrorState = 6597     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vITEMTYPE = 6 ) and ( @I_vVCTNMTHD <> 1 )  begin  select @O_iErrorState = 6598     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end if ( @I_vITEMTYPE = 6 ) and ( @I_vITMTRKOP <> 1 )  begin  select @O_iErrorState = 6599     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUseQtyOverageTolerance > 0 and  @I_vITEMTYPE > 2 )  begin  select @O_iErrorState = 11768     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUseQtyShortageTolerance > 0 and @I_vITEMTYPE > 2 )  begin  select @O_iErrorState = 11769     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUseQtyOverageTolerance < 0 or @I_vUseQtyOverageTolerance > 1 )  begin  select @O_iErrorState = 11770     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUseQtyShortageTolerance < 0 or @I_vUseQtyShortageTolerance > 1 )  begin  select @O_iErrorState = 11771     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vQtyOverTolerancePercent < 0 or @I_vQtyOverTolerancePercent > 99999 )  begin  select @O_iErrorState = 11772     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vQtyShortTolerancePercent < 0 or @I_vQtyShortTolerancePercent > 99999 )  begin  select @O_iErrorState = 11773     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@O_iErrorState = 0) begin  if (not exists (select 1 from IV40400 (nolock) where ITMCLSCD = @I_vITMCLSCD))  begin  insert IV40400  (  ITMCLSCD,  ITMCLSDC,  DEFLTCLS,  NOTEINDX,  ITEMTYPE,  ITMTRKOP,  LOTTYPE,  KPERHIST,  KPTRXHST,  KPCALHST,  KPDSTHST,  ALWBKORD,  ITMGEDSC,  TAXOPTNS,  ITMTSHID,  Purchase_Tax_Options,  Purchase_Item_Tax_Schedu,  UOMSCHDL,  VCTNMTHD,  USCATVLS_1,  USCATVLS_2,  USCATVLS_3,  USCATVLS_4,  USCATVLS_5,  USCATVLS_6,  DECPLQTY,  IVIVINDX,  IVIVOFIX,  IVCOGSIX,  IVSLSIDX,  IVSLDSIX,  IVSLRNIX,  IVINUSIX,  IVINSVIX,  IVDMGIDX,  IVVARIDX,  DPSHPIDX,  PURPVIDX,  UPPVIDX,  IVRETIDX,  ASMVRIDX,  PRCLEVEL,  PriceGroup,  PRICMTHD,  TCC,  Revalue_Inventory,  Tolerance_Percentage,  CNTRYORGN,  STTSTCLVLPRCNTG,  INCLUDEINDP,  LOTEXPWARN,  LOTEXPWARNDAYS,  UseQtyOverageTolerance,  UseQtyShortageTolerance,  QtyOverTolerancePercent,  QtyShortTolerancePercent   )  select  @I_vITMCLSCD,        @I_vITMCLSDC,       @I_vDEFLTCLS,       @NOTEINDX,        @I_vITEMTYPE,       @I_vITMTRKOP,       @I_vLOTTYPE,       @I_vKPERHIST,       @I_vKPTRXHST,       @I_vKPCALHST,       @I_vKPDSTHST,       @I_vALWBKORD,       @I_vITMGEDSC,       @I_vTAXOPTNS,       @I_vITMTSHID,       @I_vPurchase_Tax_Options,    @I_vPurchase_Item_Tax_Schedu,   @I_vUOMSCHDL,       @I_vVCTNMTHD,       @I_vUSCATVLS_1,       @I_vUSCATVLS_2,       @I_vUSCATVLS_3,       @I_vUSCATVLS_4,       @I_vUSCATVLS_5,       @I_vUSCATVLS_6,       case          when @I_vITEMTYPE = 3  then 0  else @I_vDECPLQTY  end,   @IVIVINDX,        @IVIVOFIX,        @IVCOGSIX,        @IVSLSIDX,        @IVSLDSIX,        @IVSLRNIX,        @IVINUSIX,        @IVINSVIX,        @IVDMGIDX,        @IVVARIDX,        @DPSHPIDX,        @PURPVIDX,        @UPPVIDX,        @IVRETIDX,        @ASMVRIDX,        @I_vPRCLEVEL,       @I_vPriceGroup,        @I_vPRICMTHD,       '',          case         when ( @I_vVCTNMTHD = 4 or @I_vVCTNMTHD = 5 )  then 0  else @I_vRevalue_Inventory  end,  case         when ( @I_vVCTNMTHD = 4 or @I_vVCTNMTHD = 5 )  then 0  else @I_vTolerance_Percentage  end,  '',          0,          0,          @I_vLOTEXPWARN,       @I_vLOTEXPWARNDAYS,      @I_vUseQtyOverageTolerance,       @I_vUseQtyShortageTolerance,      case                              when ( @I_vUseQtyOverageTolerance = 0 )  then 0  else @I_vQtyOverTolerancePercent   end,  case                              when ( @I_vUseQtyShortageTolerance = 0 )  then 0   else @I_vQtyShortTolerancePercent   end  if (@@error <> 0)  begin  select @O_iErrorState = 6590    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taCreateIVItemClassPost  @I_vITMCLSCD,  @I_vITMCLSDC,  @I_vDEFLTCLS,  @I_vITEMTYPE,  @I_vITMTRKOP,  @I_vLOTTYPE,   @I_vLOTEXPWARN,  @I_vLOTEXPWARNDAYS,  @I_vKPERHIST,  @I_vKPTRXHST,  @I_vKPCALHST,  @I_vKPDSTHST,  @I_vALWBKORD,  @I_vITMGEDSC,  @I_vTAXOPTNS,  @I_vITMTSHID,  @I_vPurchase_Tax_Options,  @I_vPurchase_Item_Tax_Schedu,  @I_vUOMSCHDL,  @I_vVCTNMTHD,  @I_vUSCATVLS_1,  @I_vUSCATVLS_2,  @I_vUSCATVLS_3,  @I_vUSCATVLS_4,  @I_vUSCATVLS_5,  @I_vUSCATVLS_6,  @I_vDECPLQTY,  @I_vInventory_Acct,  @I_vInventory_Offset_Acct,  @I_vCost_of_Goods_Sold_Acct,  @I_vSales_Acct,  @I_vMarkdowns_Acct,  @I_vSales_Returns_Acct,  @I_vIn_Use_Acct,  @I_vIn_Service_Acct,  @I_vDamaged_Acct,  @I_vVariance_Acct,  @I_vDrop_Ship_Items_Acct,  @I_vPurchase_Price_Variance_Acct,  @I_vUnrealized_Purchase_Price_Variance_Acct,  @I_vInventory_Returns_Acct,  @I_vAssembly_Variance_Acct,  @I_vPRCLEVEL,  @I_vPriceGroup,  @I_vPRICMTHD,  @I_vRevalue_Inventory,  @I_vTolerance_Percentage,  @I_vUseQtyOverageTolerance,   @I_vUseQtyShortageTolerance,   @I_vQtyOverTolerancePercent,   @I_vQtyShortTolerancePercent,   @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 6591    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateIVItemClass] TO [DYNGRP]
GO