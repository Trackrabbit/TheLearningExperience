SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmVendorModifierPost] @I_charStartVendor  char(30), @I_charEndVendor  char(30), @cStartVendor char(50), @cEndVendor char(50), @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[pmVendorModifierPost] TO [DYNGRP]
GO
