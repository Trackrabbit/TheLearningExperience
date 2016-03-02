SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO07260N_1] (@BS int, @USERID char(15), @DICTID smallint, @RESID smallint, @SEQNUMBR int, @USERID_RS char(15), @DICTID_RS smallint, @RESID_RS smallint, @SEQNUMBR_RS int, @USERID_RE char(15), @DICTID_RE smallint, @RESID_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, DICTID, RESID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .CO07260 WHERE ( USERID = @USERID AND DICTID = @DICTID AND RESID = @RESID AND SEQNUMBR > @SEQNUMBR OR USERID = @USERID AND DICTID = @DICTID AND RESID > @RESID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, RESID ASC, SEQNUMBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, DICTID, RESID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .CO07260 WHERE USERID = @USERID_RS AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND RESID BETWEEN @RESID_RS AND @RESID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( USERID = @USERID AND DICTID = @DICTID AND RESID = @RESID AND SEQNUMBR > @SEQNUMBR OR USERID = @USERID AND DICTID = @DICTID AND RESID > @RESID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, RESID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  USERID, DICTID, RESID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .CO07260 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND RESID BETWEEN @RESID_RS AND @RESID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( USERID = @USERID AND DICTID = @DICTID AND RESID = @RESID AND SEQNUMBR > @SEQNUMBR OR USERID = @USERID AND DICTID = @DICTID AND RESID > @RESID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, RESID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO07260N_1] TO [DYNGRP]
GO
