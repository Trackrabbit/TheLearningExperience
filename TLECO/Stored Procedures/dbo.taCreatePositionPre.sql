SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreatePositionPre]  @I_vJOBTITLE char(6) output,    @I_vDSCRIPTN char(30) output,    @I_vEEOCLASS_I  smallint output,    @I_vFLSASTATUS smallint output,    @I_vREPORTSTOPOS char(7) output,   @I_vREVIEWSETUPNAME_I char(31) output,  @I_vSKILLSET_I char(31) output,    @I_vTXTFIELD varchar(8000) output,   @I_vCHANGEBY_I char(15) output,    @I_vCHANGEDATE_I datetime output,   @I_vUpdateIfExists tinyint output,    @I_vRequesterTrx smallint output,   @I_vUSRDEFND1 char(50) output,    @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,   @I_vUSRDEFND5 varchar(8000) output,   @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreatePositionPre] TO [DYNGRP]
GO
