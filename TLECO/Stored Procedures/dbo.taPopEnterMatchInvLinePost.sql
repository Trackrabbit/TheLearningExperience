SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopEnterMatchInvLinePost]  @I_vPOPRCTNM char(17),       @I_vPOPMtchShpRcpt char(17),   @I_vShipRCPTLNNM int,    @I_vPONUMBER char(17),       @I_vQTYINVCD numeric(19,5),   @I_vRevalue_Inventory smallint,   @I_vITEMNMBR char(30),       @I_vVENDORID char(15),            @I_vRCPTLNNM int,    @I_vVNDITNUM char(30),       @I_vVNDITDSC char(100),       @I_vVarianceAccount varchar(75),  @I_vUOFM char(8),        @I_vUNITCOST numeric(19,5),       @I_vEXTDCOST numeric(19,5),       @I_vNONINVEN smallint,       @I_vAUTOCOST int,    @I_vPurchase_IV_Item_Taxable smallint,  @I_vPurchase_Item_Tax_Schedu char(15),  @I_vPurchase_Site_Tax_Schedu char(15),  @I_vTAXAMNT numeric (19,5),   @I_vRequesterTrx smallint,   @I_vPOLNENUM int,    @I_vAutoInvoice smallint,   @I_vCURNCYID char(15),    @I_vLandedCost smallint,   @I_vProjNum char(15),    @I_vCostCatID char(15),    @I_vTrackedDropShipped smallint,  @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopEnterMatchInvLinePost] TO [DYNGRP]
GO
