SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmVendorModifierPre] @I_charStartVendor  char(30) output, @I_charEndVendor  char(30) output, @cStartVendor char(50) output, @cEndVendor char(50) output, @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[pmVendorModifierPre] TO [DYNGRP]
GO
