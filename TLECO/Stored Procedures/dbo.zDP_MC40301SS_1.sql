SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301SS_1] (@RATETPID char(15), @CURNCYID char(15), @EXGTBLID char(15)) AS  set nocount on SELECT TOP 1  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE RATETPID = @RATETPID AND CURNCYID = @CURNCYID AND EXGTBLID = @EXGTBLID ORDER BY RATETPID ASC, CURNCYID ASC, EXGTBLID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301SS_1] TO [DYNGRP]
GO
