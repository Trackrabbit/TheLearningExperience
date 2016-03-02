SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01100SS_1] (@SERIES smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  SERIES, SEQNUMBR, ACTINDX, PTGACDSC, DEX_ROW_ID FROM .SY01100 WHERE SERIES = @SERIES AND SEQNUMBR = @SEQNUMBR ORDER BY SERIES ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01100SS_1] TO [DYNGRP]
GO