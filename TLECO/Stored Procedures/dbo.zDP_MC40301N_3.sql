SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301N_3] (@BS int, @EXGTBLID char(15), @RATETPID char(15), @CURNCYID char(15), @EXGTBLID_RS char(15), @RATETPID_RS char(15), @CURNCYID_RS char(15), @EXGTBLID_RE char(15), @RATETPID_RE char(15), @CURNCYID_RE char(15)) AS  set nocount on IF @EXGTBLID_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE ( EXGTBLID = @EXGTBLID AND RATETPID = @RATETPID AND CURNCYID > @CURNCYID OR EXGTBLID = @EXGTBLID AND RATETPID > @RATETPID OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, RATETPID ASC, CURNCYID ASC END ELSE IF @EXGTBLID_RS = @EXGTBLID_RE BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE EXGTBLID = @EXGTBLID_RS AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ( EXGTBLID = @EXGTBLID AND RATETPID = @RATETPID AND CURNCYID > @CURNCYID OR EXGTBLID = @EXGTBLID AND RATETPID > @RATETPID OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, RATETPID ASC, CURNCYID ASC END ELSE BEGIN SELECT TOP 25  CURNCYID, RATETPID, EXGTBLID, DFLTRATE, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, FINOFFST, PUROFFST, SLSOFFST, RNDWTOFF, RNDDIFF, Base_Exchange_Rate_On, DEX_ROW_ID FROM .MC40301 WHERE EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ( EXGTBLID = @EXGTBLID AND RATETPID = @RATETPID AND CURNCYID > @CURNCYID OR EXGTBLID = @EXGTBLID AND RATETPID > @RATETPID OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, RATETPID ASC, CURNCYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301N_3] TO [DYNGRP]
GO