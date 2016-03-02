SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateShippingMethodPre]  @I_vSHIPMTHD char(15) output,  @I_vSHMTHDSC char(30) output,  @I_vPHONNAME char(14) output,  @I_vCONTACT char(60) output,  @I_vCARRACCT char(15) output,  @I_vCARRIER char(30) output,  @I_vSHIPTYPE smallint output,  @I_vUpdateIfExists tinyint output,  @I_vUSERID char(15) output,  @I_vCREATDDT datetime output,  @I_vMODIFDT datetime output,  @I_vNOTETEXT  varchar(8000) output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateShippingMethodPre] TO [DYNGRP]
GO
