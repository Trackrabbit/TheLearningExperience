SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301L_2] (@CURNCYID_RS char(15), @RATETPID_RS char(15), @Base_Exchange_Rate_On_RS smallint, @EXGTBLID_RS char(15), @CURNCYID_RE char(15), @RATETPID_RE char(15), @Base_Exchange_Rate_On_RE smallint, @EXGTBLID_RE char(15)) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 ORDER BY CURNCYID DESC, RATETPID DESC, Base_Exchange_Rate_On DESC, EXGTBLID DESC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE CURNCYID = @CURNCYID_RS AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND Base_Exchange_Rate_On BETWEEN @Base_Exchange_Rate_On_RS AND @Base_Exchange_Rate_On_RE AND EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE ORDER BY CURNCYID DESC, RATETPID DESC, Base_Exchange_Rate_On DESC, EXGTBLID DESC END ELSE BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND Base_Exchange_Rate_On BETWEEN @Base_Exchange_Rate_On_RS AND @Base_Exchange_Rate_On_RE AND EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE ORDER BY CURNCYID DESC, RATETPID DESC, Base_Exchange_Rate_On DESC, EXGTBLID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301L_2] TO [DYNGRP]
GO