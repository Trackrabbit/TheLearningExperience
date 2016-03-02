SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40201SS_1] (@CURNCYID char(15)) AS  set nocount on SELECT TOP 1  CURNCYID, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, DEX_ROW_ID FROM .MC40201 WHERE CURNCYID = @CURNCYID ORDER BY CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40201SS_1] TO [DYNGRP]
GO
