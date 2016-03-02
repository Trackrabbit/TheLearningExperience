SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taItemListPricePost]  @I_vCUSTNMBR char(15),     @I_vDOCDATE datetime ,    @I_vITEMNMBR char(30),    @I_vQUANTITY numeric(19,5),     @I_vPRCLEVEL char(10),    @I_vNONINVEN smallint,        @I_vCURNCYID char(15),    @I_vUOFM char(8),    @I_vIncludePromo smallint,   @I_vUNITPRCE numeric(19,5),     @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taItemListPricePost] TO [DYNGRP]
GO
