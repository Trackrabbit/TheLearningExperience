SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  FUNCTION  [dbo].[aagFixedOrVar](@I_nAcctIdx int)  RETURNS  smallint AS  BEGIN declare @FixedOrVar smallint  If Exists(select FXDORVAR from GL00100 where ACTINDX = @I_nAcctIdx) select @FixedOrVar = FXDORVAR from GL00100 where ACTINDX = @I_nAcctIdx Else select @FixedOrVar = 0  RETURN(@FixedOrVar) END    
GO
GRANT EXECUTE ON  [dbo].[aagFixedOrVar] TO [DYNGRP]
GO
