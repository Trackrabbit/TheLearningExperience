SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateIVItemClassPost]  @I_vITMCLSCD char(10),      @I_vITMCLSDC char(30),      @I_vDEFLTCLS tinyint,       @I_vITEMTYPE smallint,      @I_vITMTRKOP smallint,       @I_vLOTTYPE char(10),      @I_vLOTEXPWARN tinyint,      @I_vLOTEXPWARNDAYS smallint,    @I_vKPERHIST tinyint,      @I_vKPTRXHST tinyint,      @I_vKPCALHST tinyint,      @I_vKPDSTHST tinyint,      @I_vALWBKORD tinyint,      @I_vITMGEDSC char(10),      @I_vTAXOPTNS smallint,      @I_vITMTSHID char(15),      @I_vPurchase_Tax_Options smallint,   @I_vPurchase_Item_Tax_Schedu char(15),   @I_vUOMSCHDL char(11),      @I_vVCTNMTHD smallint,      @I_vUSCATVLS_1 char(10),     @I_vUSCATVLS_2 char(10),     @I_vUSCATVLS_3 char(10),     @I_vUSCATVLS_4 char(10),     @I_vUSCATVLS_5 char(10),     @I_vUSCATVLS_6 char(10),     @I_vDECPLQTY smallint,      @I_vInventory_Acct char(75),    @I_vInventory_Offset_Acct char(75),   @I_vCost_of_Goods_Sold_Acct char(75),  @I_vSales_Acct char(75),     @I_vMarkdowns_Acct char(75),    @I_vSales_Returns_Acct char(75),   @I_vIn_Use_Acct char(75),     @I_vIn_Service_Acct char(75),    @I_vDamaged_Acct char(75),     @I_vVariance_Acct char(75),     @I_vDrop_Ship_Items_Acct char(75),   @I_vPurchase_Price_Variance_Acct char(75),  @I_vUnrealized_Purchase_Price_Variance_Acct char(75),  @I_vInventory_Returns_Acct char(75),   @I_vAssembly_Variance_Acct char(75),   @I_vPRCLEVEL char(10),      @I_vPriceGroup char(10),     @I_vPRICMTHD smallint,       @I_vRevalue_Inventory tinyint,    @I_vTolerance_Percentage int,    @I_vUseQtyOverageTolerance tinyint,   @I_vUseQtyShortageTolerance tinyint,  @I_vQtyOverTolerancePercent int,   @I_vQtyShortTolerancePercent int,   @I_vUSRDEFND1 char(50),         @I_vUSRDEFND2 char(50),         @I_vUSRDEFND3 char(50),         @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateIVItemClassPost] TO [DYNGRP]
GO