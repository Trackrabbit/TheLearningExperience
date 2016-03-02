SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBenefitPre]  @I_vBENEFIT char(6) output,    @I_vDSCRIPTN char(30) output,    @I_vINACTIVE tinyint output,    @I_vBNFBEGDT datetime output,    @I_vBNFENDDT datetime output,    @I_vVARBENFT tinyint output,    @I_vBNFTFREQ smallint output,     @I_vSBJTFDTX tinyint output,    @I_vSBJTSSEC tinyint output,    @I_vSBJTMCAR tinyint output,    @I_vSBJTSTTX tinyint output,    @I_vSBJTLTAX tinyint output,    @I_vSBJTFUTA tinyint output,    @I_vSBJTSUTA tinyint output,    @I_vFFEDTXRT numeric(19,5) output,  @I_vFLSTTXRT numeric(19,5) output,  @I_vBORCDTYP smallint output,    @I_vBSDORCDS smallint output,    @I_vBNFTMTHD smallint output,     @I_vBNFFRMLA smallint output,    @I_vBNFPRCNT_1 numeric(19,5) output,   @I_vBNFPRCNT_2 numeric(19,5) output,   @I_vBNFPRCNT_3 numeric(19,5) output,   @I_vBNFPRCNT_4 numeric(19,5) output,   @I_vBNFPRCNT_5 numeric(19,5) output,   @I_vBNFITAMT_1 numeric(19,5) output,   @I_vBNFITAMT_2 numeric(19,5) output,   @I_vBNFITAMT_3 numeric(19,5) output,   @I_vBNFITAMT_4 numeric(19,5) output,   @I_vBNFITAMT_5 numeric(19,5) output,   @I_vBNFTRMAX_1 numeric(19,5) output,   @I_vBNFTRMAX_2 numeric(19,5) output,   @I_vBNFTRMAX_3 numeric(19,5) output,   @I_vBNFTRMAX_4 numeric(19,5) output,   @I_vBNFTRMAX_5 numeric(19,5) output,   @I_vBNTRMXUN_1 numeric(19,5) output,   @I_vBNTRMXUN_2 numeric(19,5) output,   @I_vBNTRMXUN_3 numeric(19,5) output,   @I_vBNTRMXUN_4 numeric(19,5) output,   @I_vBNTRMXUN_5 numeric(19,5) output,   @I_vBNPAYPMX numeric(19,5) output,   @I_vBNFYRMAX numeric(19,5) output,   @I_vBenefit_Fiscal_Max numeric(19,5) output,  @I_vBNFLFMAX numeric(19,5) output,   @I_vW2BXNMBR smallint output,    @I_vW2BXLABL char(6) output,    @I_vW2BXNMBR2 smallint output,    @I_vW2BXLABL2 char(6) output,    @I_vW2BXNMBR3 smallint output,   @I_vW2BXLABL3 char(6) output,    @I_vW2BXNMBR4 smallint output,   @I_vW2BXLABL4 char(6) output,    @I_vDATAENTDFLT tinyint output,    @I_vEMPLRMAXMAT numeric(19,5) output,   @I_vUpdateIfExists tinyint output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1 char(50) output,    @I_vUSRDEFND2 char(50) output,        @I_vUSRDEFND3 char(50) output,        @I_vUSRDEFND4 varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBenefitPre] TO [DYNGRP]
GO
