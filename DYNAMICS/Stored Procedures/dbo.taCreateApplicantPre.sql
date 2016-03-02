SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantPre]  @I_vLLASTNAME_I char(21) output,     @I_vFFIRSTNAME_I char(15) output,     @I_vAPPLYDATE_I datetime output,     @I_vAPPLICANTNUMBER_I numeric(19,5) output,   @I_vISEQUENCENUMBER_I smallint output,    @I_vMIDLNAME char(15) output,      @I_vSSN_I char(15) output,       @I_vADDRESS1 char(61) output,      @I_vADDRESS2 char(61) output,      @I_vCITY char(35) output,       @I_vSTATE char(29) output,       @I_vZIPCODE_I char(11) output,      @I_vCOUNTRY char(61) output,      @I_vHOMEPHONE char(21) output,      @I_vWORKPHONE char(21) output,      @I_vEXT_I char(5) output,       @I_vREQUISITIONNUMBER_I int output,      @I_vCOMPANYCODE_I char(5) output,     @I_vDIVISIONCODE_I char(7) output,     @I_vDEPARTMENTCODE_I char(7) output,    @I_vPOSITIONCODE_I char(7) output,     @I_vLOCATNID char(15) output,      @I_vSTATUS0_I smallint output,      @I_vREJECTREASON_I smallint output,     @I_vDSCRIPTN char(31) output,      @I_vRELOCATION_I smallint output,     @I_vREPLYLETTERSENT_I tinyint output,    @I_vCOLORCODE_I smallint output,     @I_vREFSOURCEDDL_I smallint output,      @I_vREFERENCESOURCE_I char(31) output,    @I_vGENDERGB_I smallint output,      @I_vEEOETHNICORIGIN_I smallint output,     @I_vEEOAGE_I smallint output,      @I_vHANDICAPPED tinyint output,      @I_vVETERAN tinyint output,       @I_vDISABLEDVETERAN tinyint output,     @I_vVIETNAMVETERAN tinyint output,      @I_vOTHERVET tinyint output,      @I_vCHANGEBY_I char(15) output,      @I_vDATE1_I datetime output,      @I_vDATE2_I datetime output,      @I_vDATE3_I datetime output,      @I_vDATE4_I datetime output,      @I_vDATE5_I datetime output,      @I_vSTRINGS_I_1 char(31) output,     @I_vSTRINGS_I_2 char(31) output,     @I_vSTRINGS_I_3 char(31) output,     @I_vSTRINGS_I_4 char(31) output,     @I_vSTRINGS_I_5 char(31) output,     @I_vNUMERICEXTRA_1 int output,      @I_vNUMERICEXTRA_2 int output,      @I_vNUMERICEXTRA_3 int output,      @I_vNUMERICEXTRA_4 int output,      @I_vNUMERICEXTRA_5 int output,      @I_vDOLLARS_I_1 numeric(19,5) output,    @I_vDOLLARS_I_2 numeric(19,5) output,    @I_vDOLLARS_I_3 numeric(19,5) output,    @I_vDOLLARS_I_4 numeric(19,5) output,    @I_vDOLLARS_I_5 numeric(19,5) output,    @I_vCHECKBOXES_I_1 tinyint output,     @I_vCHECKBOXES_I_2 tinyint output,     @I_vCHECKBOXES_I_3 tinyint output,     @I_vCHECKBOXES_I_4 tinyint output,     @I_vCHECKBOXES_I_5 tinyint output,     @I_vUpdateIfExists tinyint output,     @I_vRequesterTrx smallint output,     @I_vUSRDEFND1 char(50) output,      @I_vUSRDEFND2 char(50) output,         @I_vUSRDEFND3 char(50) output,         @I_vUSRDEFND4 varchar(8000) output,     @I_vUSRDEFND5 varchar(8000) output,     @O_iErrorState int output,       @oErrString varchar(255) output       as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantPre] TO [DYNGRP]
GO