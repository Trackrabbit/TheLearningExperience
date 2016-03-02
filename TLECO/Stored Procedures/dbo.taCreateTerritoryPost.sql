SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateTerritoryPost]  @I_vSALSTERR  char(15),   @I_vSLTERDSC  char(30),   @I_vSLPRSNID  char(15),   @I_vSTMGRFNM  char(15),   @I_vSTMGRMNM  char(15),         @I_vSTMGRLNM  char(20),   @I_vCOUNTRY  char(60),   @I_vCOSTTODT  numeric(19,5),   @I_vTTLCOMTD  numeric(19,5),   @I_vTTLCOMLY  numeric(19,5),   @I_vNCOMSLYR  numeric(19,5),   @I_vCOMSLLYR  numeric(19,5),   @I_vCSTLSTYR  numeric(19,5),   @I_vCOMSLTDT  numeric(19,5),   @I_vNCOMSLTD  numeric(19,5),   @I_vKPCALHST  tinyint,   @I_vKPERHIST  tinyint,   @I_vMODIFDT datetime,   @I_vCREATDDT datetime,   @I_vUSRDEFND1  char(50),   @I_vUSRDEFND2  char(50),   @I_vUSRDEFND3  char(50),   @I_vUSRDEFND4  varchar(8000),   @I_vUSRDEFND5  varchar(8000),   @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateTerritoryPost] TO [DYNGRP]
GO
