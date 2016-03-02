SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateTerritoryPre]  @I_vSALSTERR  char(15) output,  @I_vSLTERDSC  char(30) output,  @I_vSLPRSNID  char(15) output,  @I_vSTMGRFNM  char(15) output,  @I_vSTMGRMNM  char(15) output,         @I_vSTMGRLNM  char(20) output,  @I_vCOUNTRY  char(60) output,  @I_vCOSTTODT  numeric(19,5) output,  @I_vTTLCOMTD  numeric(19,5) output,  @I_vTTLCOMLY  numeric(19,5) output,  @I_vNCOMSLYR  numeric(19,5) output,  @I_vCOMSLLYR  numeric(19,5) output,  @I_vCSTLSTYR  numeric(19,5) output,  @I_vCOMSLTDT  numeric(19,5) output,  @I_vNCOMSLTD  numeric(19,5) output,  @I_vKPCALHST  tinyint output,   @I_vKPERHIST  tinyint output,          @I_vMODIFDT datetime output,  @I_vCREATDDT datetime output,  @I_vUSRDEFND1  char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5  varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateTerritoryPre] TO [DYNGRP]
GO
