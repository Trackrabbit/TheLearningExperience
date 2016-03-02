SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taItemListPricePre]  @I_vCUSTNMBR char(15) output,    @I_vDOCDATE datetime output,   @I_vITEMNMBR char(30) output,   @I_vQUANTITY numeric(19,5) output,    @I_vPRCLEVEL char(10) output,   @I_vNONINVEN smallint output,       @I_vCURNCYID char(15) output,   @I_vUOFM char(8) output,   @I_vIncludePromo smallint output,  @I_vUNITPRCE numeric(19,5) output,    @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taItemListPricePre] TO [DYNGRP]
GO
