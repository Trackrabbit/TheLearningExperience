SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301SS_2] (@CURNCYID char(15), @RATETPID char(15), @Base_Exchange_Rate_On smallint, @EXGTBLID char(15)) AS  set nocount on SELECT TOP 1  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE CURNCYID = @CURNCYID AND RATETPID = @RATETPID AND Base_Exchange_Rate_On = @Base_Exchange_Rate_On AND EXGTBLID = @EXGTBLID ORDER BY CURNCYID ASC, RATETPID ASC, Base_Exchange_Rate_On ASC, EXGTBLID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301SS_2] TO [DYNGRP]
GO
