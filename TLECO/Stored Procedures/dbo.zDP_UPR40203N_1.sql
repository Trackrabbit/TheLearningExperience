SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40203N_1] (@BS int, @DICTID smallint, @RESID smallint, @DICTID_RS smallint, @RESID_RS smallint, @DICTID_RE smallint, @RESID_RE smallint) AS set nocount on IF @DICTID_RS IS NULL BEGIN SELECT TOP 25  DICTID, RESID, RESTECHNAME, MARKED, DEX_ROW_ID FROM .UPR40203 WHERE ( DICTID = @DICTID AND RESID > @RESID OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESID ASC END ELSE IF @DICTID_RS = @DICTID_RE BEGIN SELECT TOP 25  DICTID, RESID, RESTECHNAME, MARKED, DEX_ROW_ID FROM .UPR40203 WHERE DICTID = @DICTID_RS AND RESID BETWEEN @RESID_RS AND @RESID_RE AND ( DICTID = @DICTID AND RESID > @RESID OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESID ASC END ELSE BEGIN SELECT TOP 25  DICTID, RESID, RESTECHNAME, MARKED, DEX_ROW_ID FROM .UPR40203 WHERE DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND RESID BETWEEN @RESID_RS AND @RESID_RE AND ( DICTID = @DICTID AND RESID > @RESID OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40203N_1] TO [DYNGRP]
GO
