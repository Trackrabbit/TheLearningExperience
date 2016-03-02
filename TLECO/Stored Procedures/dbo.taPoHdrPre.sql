SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPoHdrPre]  @I_vPOTYPE smallint output,    @I_vPONUMBER char(17) output,     @I_vVENDORID char(15) output,    @I_vVENDNAME char(64)output,    @I_vDOCDATE datetime output,    @I_vBUYERID char(15) output,    @I_vALLOWSOCMTS tinyint output,    @I_vTRDISAMT numeric(19,5) output,   @I_vFRTAMNT numeric(19,5) output,   @I_vMSCCHAMT numeric(19,5) output,   @I_vTAXAMNT numeric(19,5) output,   @I_vSUBTOTAL numeric(19,5) output,   @I_vCUSTNMBR char(15) output,    @I_vPRSTADCD char(15) output,    @I_vCMPNYNAM char(64) output,    @I_vCONTACT char(60) output,    @I_vADDRESS1 char(60) output,    @I_vADDRESS2 char(60) output,    @I_vADDRESS3 char(60) output,    @I_vCITY char(35) output,    @I_vSTATE char(29) output,    @I_vZIPCODE char(10) output,    @I_vCCode char(6) output,    @I_vCOUNTRY char(60) output,    @I_vPHONE1 char(21) output,    @I_vPHONE2 char(21) output,    @I_vPHONE3 char(21) output,    @I_vFAX char(21) output,    @I_vPrint_Phone_NumberGB smallint output,     @I_vVADCDPAD char(15) output,    @I_vPURCHCMPNYNAM char(64) output,   @I_vPURCHCONTACT char(60) output,   @I_vPURCHADDRESS1 char(60) output,   @I_vPURCHADDRESS2 char(60) output,   @I_vPURCHADDRESS3 char(60) output,   @I_vPURCHCITY char(35) output,    @I_vPURCHSTATE char(29) output,    @I_vPURCHZIPCODE char(10) output,   @I_vPURCHCCode char(6) output,    @I_vPURCHCOUNTRY char(60) output,   @I_vPURCHPHONE1 char(21) output,   @I_vPURCHPHONE2 char(21) output,   @I_vPURCHPHONE3 char(21) output,   @I_vPURCHFAX char(21) output,    @I_vPRBTADCD char(15) output,    @I_vSHIPMTHD char(15) output,    @I_vPYMTRMID char(20) output,    @I_vDSCPCTAM numeric(19,2) output,   @I_vDSCDLRAM numeric(19,5) output,   @I_vDISAMTAV numeric(19,5) output,   @I_vDUEDATE datetime output,    @I_vDISCDATE datetime output,    @I_vTXRGNNUM char(25) output,    @I_vCONFIRM1 char(20) output,    @I_vCOMMNTID char(15) output,    @I_vCOMMENT_1 char(50) output,    @I_vCOMMENT_2 char(50) output,    @I_vCOMMENT_3 char(50) output,    @I_vCOMMENT_4 char(50) output,    @I_vHOLD tinyint output,    @I_vTAXSCHID char(15) output,    @I_vPurchase_Freight_Taxable smallint output,  @I_vPurchase_Misc_Taxable smallint output,  @I_vFRTSCHID char(15) output,    @I_vMSCSCHID char(15) output,    @I_vFRTTXAMT numeric(19,5) output,   @I_vMSCTXAMT numeric(19,5) output,   @I_vBCKTXAMT numeric(19,5) output,   @I_vBackoutFreightTaxAmt numeric(19,5) output,  @I_vBackoutMiscTaxAmt numeric(19,5) output,  @I_vBackoutTradeDiscTax numeric(19,5) output,  @I_vUSINGHEADERLEVELTAXES smallint output,  @I_vCURNCYID char(15) output,    @I_vXCHGRATE numeric(19,7) output,   @I_vRATETPID char(15) output,    @I_vEXPNDATE datetime output,    @I_vEXCHDATE datetime output,    @I_vEXGTBDSC char(30) output,    @I_vEXTBLSRC char(50) output,    @I_vRATEEXPR smallint output,     @I_vDYSTINCR smallint output,    @I_vRATEVARC numeric(19,7) output,   @I_vTRXDTDEF smallint output,    @I_vRTCLCMTD smallint output,    @I_vPRVDSLMT smallint output,    @I_vDATELMTS smallint output,    @I_vTIME1 datetime output,    @I_vUSERID char(15) output,    @I_vPOSTATUS smallint output,    @I_vCMMTTEXT varchar(500) output,   @I_vPRMDATE datetime output,    @I_vPRMSHPDTE datetime output,    @I_vREQDATE datetime output,    @I_vCONTENDDTE datetime output,    @I_vCNTRLBLKTBY smallint output,   @I_vREQTNDT datetime output,     @I_vUpdateIfExists smallint output,    @I_vNOTETEXT  varchar(8000) output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1 char(50) output,    @I_vUSRDEFND2 char(50) output,    @I_vUSRDEFND3 char(50) output,    @I_vUSRDEFND4 varchar(8000) output,   @I_vUSRDEFND5 varchar(8000) output,   @O_iErrorState int output, @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPoHdrPre] TO [DYNGRP]
GO