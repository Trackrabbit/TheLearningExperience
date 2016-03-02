SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagDelInactDimFromClass] @I_nTrxDimID int = 0, @O_fError tinyint = 0 output as delete from AAG00202 where aaTrxDimID = @I_nTrxDimID begin if @@error <> 0  begin  set @O_fError = 1  return  end end    
GO
GRANT EXECUTE ON  [dbo].[aagDelInactDimFromClass] TO [DYNGRP]
GO
