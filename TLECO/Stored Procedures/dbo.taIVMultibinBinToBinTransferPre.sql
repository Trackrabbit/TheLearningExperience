SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVMultibinBinToBinTransferPre]  @I_vBin_XFer_Doc_Number char(17) output,  @I_vBin_XFer_Date datetime output,    @I_vReason_Code char(15) output,    @I_vITEMNMBR char(30) output,     @I_vLOCNCODE char(10) output,     @I_vQTYTYPE smallint output,     @I_vUOFM char(8) output,      @I_vBIN char(15) output,      @I_vQUANTITY numeric(19,5) output,    @I_vTOBIN char(15) output,      @I_vCreateBin tinyint output,     @I_vResetQty tinyint output,     @I_vAddMoreSerLots tinyint output,    @I_vSerLotNmbr char(20) output,     @I_vEXPNDATE datetime output,     @I_vRequesterTrx smallint output,    @I_vUSERID char(15) output,      @I_vUSRDEFND1 char(50) output,     @I_vUSRDEFND2 char(50) output,     @I_vUSRDEFND3 char(50) output,     @I_vUSRDEFND4 varchar(8000) output,    @I_vUSRDEFND5 varchar(8000) output,    @O_iErrorState int output,      @oErrString varchar(255) output      as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVMultibinBinToBinTransferPre] TO [DYNGRP]
GO
