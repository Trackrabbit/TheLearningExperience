SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeePayCodePre]  @I_vEMPLOYID char(15) output,    @I_vPAYRCORD char(6) output,    @I_vINACTIVE tinyint output,    @I_vBSPAYRCD char(6) output,    @I_vPAYRTAMT numeric(19,5) output,   @I_vPAYUNIT char(25) output,    @I_vPAYUNPER smallint output,     @I_vRPTASWGS tinyint output,    @I_vSBJTFDTX tinyint output,    @I_vSBJTSSEC tinyint output,    @I_vSBJTMCAR tinyint output,    @I_vSBJTSTTX tinyint output,    @I_vSBJTLTAX tinyint output,    @I_vSBJTFUTA tinyint output,    @I_vSBJTSUTA tinyint output,    @I_vSUTASTAT char(2) output,    @I_vFFEDTXRT numeric(19,5) output,   @I_vFLSTTXRT numeric(19,5) output,   @I_vPAYPEROD smallint output,    @I_vMXPYPPER numeric(19,5) output,   @I_vTipType smallint output,    @I_vPAYADVNC numeric(19,5) output,   @I_vACRUVACN tinyint output,     @I_vACRUSTIM tinyint output,    @I_vWRKRCOMP char(6) output,    @I_vW2BXNMBR smallint output,    @I_vW2BXLABL char(6) output,    @I_vW2BXNMBR2 smallint output,     @I_vW2BXLABL2 char(6) output,    @I_vW2BXNMBR3 smallint output,    @I_vW2BXLABL3 char(6) output,    @I_vW2BXNMBR4 smallint output,    @I_vW2BXLABL4 char(6) output,    @I_vPYADVTKN numeric(19,5) output,   @I_vDATAENTDFLT tinyint output,    @I_vPrimary_Pay_Record tinyint output,  @I_vSHFTCODE char(6) output,    @I_vPAYFACTR numeric(19,5) output,   @I_vUseDefaultCoPayCode smallint output,  @I_vUpdateIfExists tinyint output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1 char(50) output,    @I_vUSRDEFND2 char(50) output,        @I_vUSRDEFND3 char(50) output,        @I_vUSRDEFND4 varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeePayCodePre] TO [DYNGRP]
GO
