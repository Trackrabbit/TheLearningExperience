SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopRcptLineInsertPost]  @I_vPOPTYPE smallint,    @I_vPOPRCTNM char(17),    @I_vPONUMBER char(17),    @I_vITEMNMBR char(30),    @I_vITEMDESC char(100),    @I_vVENDORID char(15),     @I_vRCPTLNNM int,    @I_vVNDITNUM char(30),    @I_vVNDITDSC char(100),    @I_vACTLSHIP datetime,    @I_vINVINDX int,     @I_vInventoryAccount varchar(75),  @I_vUOFM char(8),    @I_vUNITCOST numeric(19,5),   @I_vEXTDCOST numeric(19,5),   @I_vNONINVEN smallint,    @I_vJOBNUMBR char(17),    @I_vBOLPRONUMBER char(30),    @I_vQTYSHPPD numeric(19,5),   @I_vQTYINVCD numeric(19,5),    @I_vAUTOCOST int,    @I_vPurchase_IV_Item_Taxable smallint,  @I_vPurchase_Item_Tax_Schedu char(15),  @I_vPurchase_Site_Tax_Schedu char(15),  @I_vTAXAMNT numeric (19,5),   @I_vLanded_Cost_Group_ID char(15),  @I_vLOCNCODE char(10),    @I_vPOLNENUM int,    @I_vreceiptdate datetime,   @I_vCURNCYID char(15),    @I_vProjNum char(15),    @I_vCostCatID char(15),    @I_vAutoAssignBin smallint,   @I_vCMMTTEXT varchar(500),   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopRcptLineInsertPost] TO [DYNGRP]
GO
