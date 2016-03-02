SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCheckDefCodeExists] @I_nTrxDimID int = 0, @I_nTrxCodeID int = 0, @O_fDefCodeExists tinyint = 0 output as if EXISTS (select aaTrxDimCodeIDDflt from AAG00202 where aaTrxDimID = @I_nTrxDimID and  aaTrxDimCodeIDDflt = @I_nTrxCodeID and aaDataEntry = 4)  begin  set @O_fDefCodeExists = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagCheckDefCodeExists] TO [DYNGRP]
GO
