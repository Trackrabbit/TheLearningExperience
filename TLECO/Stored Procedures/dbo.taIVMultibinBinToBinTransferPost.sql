SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVMultibinBinToBinTransferPost]  @I_vBin_XFer_Doc_Number char(17),  @I_vBin_XFer_Date datetime,    @I_vReason_Code char(15),    @I_vITEMNMBR char(30),     @I_vLOCNCODE char(10),     @I_vQTYTYPE smallint ,     @I_vUOFM char(8),      @I_vBIN char(15),      @I_vQUANTITY numeric(19,5),    @I_vTOBIN char(15),      @I_vCreateBin tinyint,     @I_vResetQty tinyint,     @I_vAddMoreSerLots tinyint,    @I_vSerLotNmbr char(20),    @I_vEXPNDATE datetime,     @I_vRequesterTrx smallint,    @I_vUSERID char(15),     @I_vUSRDEFND1 char(50),     @I_vUSRDEFND2 char(50),     @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,    @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVMultibinBinToBinTransferPost] TO [DYNGRP]
GO
