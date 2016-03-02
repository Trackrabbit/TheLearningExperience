SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantReferencesPost]  @I_vLLASTNAME_I char(21),     @I_vFFIRSTNAME_I char(15),     @I_vREFERENCENAME_I char(61),    @I_vAPPLICANTNUMBER_I numeric(19,5),   @I_vISEQUENCENUMBER_I smallint,    @I_vREFRELATIONSHIP_I char(15),    @I_vCOMPANY_I char(65),      @I_vADDRESS1 char(61),      @I_vCITY char(35),       @I_vSTATE char(29),       @I_vZIPCODE_I char(11),      @I_vWORKPHONE char(21),      @I_vNOTE varchar(8000),       @I_vCHANGEBY_I char(15),     @I_vUpdateIfExists tinyint,     @I_vRequesterTrx smallint ,     @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),         @I_vUSRDEFND3 char(50),         @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantReferencesPost] TO [DYNGRP]
GO
