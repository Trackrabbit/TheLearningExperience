SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301SS_4] (@CURNCYID char(15), @DFLTRATE tinyint) AS  set nocount on SELECT TOP 1  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE CURNCYID = @CURNCYID AND DFLTRATE = @DFLTRATE ORDER BY CURNCYID ASC, DFLTRATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301SS_4] TO [DYNGRP]
GO