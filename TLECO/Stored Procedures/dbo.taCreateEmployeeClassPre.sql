SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeClassPre]  @I_vEMPLCLAS char(15) output,   @I_vDSCRIPTN char(30) output,   @I_vDEPRTMNT char(6) output,   @I_vJOBTITLE char(6) output,   @I_vSUTASTAT char(2) output,   @I_vWRKRCOMP char(6) output,   @I_vMINETPAY numeric(19,5) output,  @I_vWKHRPRYR smallint output,   @I_vWCACFPAY smallint output,   @I_vAccountNumber char(75) output,  @I_vUSERDEF1 char(20) output,   @I_vUSERDEF2 char(20) output,   @I_vATACRVAC tinyint output,   @I_vVACCRMTH smallint output,   @I_vVACCRAMT numeric(19,5) output,  @I_vVACAPRYR int output,   @I_vVACAVLBL int output,   @I_vWRNVCNFLSBLWZR tinyint output,  @I_vATACRSTM tinyint output,   @I_vSTMACMTH smallint output,   @I_vSKTMACAM numeric(19,5) output,  @I_vSKTMHPYR int output,   @I_vSIKTIMAV int output,   @I_vWRNSTFLSBLWZR tinyint output,  @I_vDEFLTCLS tinyint output,   @I_vCalc_Min_Wage_Bal tinyint output,  @I_vEMPLOYMENTTYPE smallint output,   @I_vDefaultFromClass tinyint output,  @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeClassPre] TO [DYNGRP]
GO
