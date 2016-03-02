SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPoLinePost]  @I_vPOTYPE smallint,    @I_vPONUMBER char(17),     @I_vDOCDATE datetime,    @I_vVENDORID char(15),     @I_vLOCNCODE char(10),    @I_vVNDITNUM char(30),    @I_vITEMNMBR char(30),    @I_vQUANTITY numeric (19,5),      @I_vQTYCANCE numeric (19,5),   @I_vFREEONBOARD smallint,   @I_vREQSTDBY char(20),    @I_vCOMMNTID char(15),    @I_vCOMMENT_1 char(50),    @I_vCOMMENT_2 char(50),    @I_vCOMMENT_3 char(50),    @I_vCOMMENT_4 char(50),    @I_vREQDATE datetime,    @I_vRELEASEBYDATE datetime,   @I_vPRMDATE datetime,      @I_vPRMSHPDTE datetime,    @I_vNONINVEN smallint,           @I_vIVIVINDX int,    @I_vInventoryAccount varchar(75),  @I_vITEMDESC char(100),    @I_vUNITCOST numeric (19,5),   @I_vVNDITDSC char(100),    @I_vUOFM char(8),    @I_vPurchase_IV_Item_Taxable smallint,  @I_vPurchase_Item_Tax_Schedu char(15),  @I_vPurchase_Site_Tax_Schedu char(15),  @I_vBSIVCTTL smallint,    @I_vTAXAMNT numeric (19,5),   @I_vBCKTXAMT numeric (19,5),   @I_vLanded_Cost_Group_ID char(15),  @I_vPLNNDSPPLID smallint,   @I_vSHIPMTHD char(15),    @I_vBackoutTradeDiscTax numeric (19,5),  @I_vPOLNESTA smallint,    @I_vCMMTTEXT varchar(500),   @I_vORD int,     @I_vCUSTNMBR char(15),    @I_vADRSCODE char(15),    @I_vCMPNYNAM char(64),    @I_vCONTACT char(60),    @I_vADDRESS1 char(60),    @I_vADDRESS2 char(60),    @I_vADDRESS3 char(60),    @I_vCITY char(35),    @I_vSTATE char(29),    @I_vZIPCODE char(10),    @I_vCCode char(6),    @I_vCOUNTRY char(60),    @I_vPHONE1 char(21),    @I_vPHONE2 char(21),    @I_vPHONE3 char(21),    @I_vFAX char(21),    @I_vPrint_Phone_NumberGB smallint,    @I_vCURNCYID char(15),    @I_vProjNum char(15),    @I_vCostCatID char(15),    @I_vLineNumber int,    @I_vUpdateIfExists smallint,   @I_vNOTETEXT  varchar(8000),   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),        @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPoLinePost] TO [DYNGRP]
GO