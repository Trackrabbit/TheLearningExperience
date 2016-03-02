SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41000N_2] (@BS int, @CALNDRID char(15), @YEAR1 smallint, @QUARTERID smallint, @CALNDRID_RS char(15), @YEAR1_RS smallint, @QUARTERID_RS smallint, @CALNDRID_RE char(15), @YEAR1_RE smallint, @QUARTERID_RE smallint) AS  set nocount on IF @CALNDRID_RS IS NULL BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE ( CALNDRID = @CALNDRID AND YEAR1 = @YEAR1 AND QUARTERID > @QUARTERID OR CALNDRID = @CALNDRID AND YEAR1 > @YEAR1 OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, YEAR1 ASC, QUARTERID ASC END ELSE IF @CALNDRID_RS = @CALNDRID_RE BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE CALNDRID = @CALNDRID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND QUARTERID BETWEEN @QUARTERID_RS AND @QUARTERID_RE AND ( CALNDRID = @CALNDRID AND YEAR1 = @YEAR1 AND QUARTERID > @QUARTERID OR CALNDRID = @CALNDRID AND YEAR1 > @YEAR1 OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, YEAR1 ASC, QUARTERID ASC END ELSE BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE CALNDRID BETWEEN @CALNDRID_RS AND @CALNDRID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND QUARTERID BETWEEN @QUARTERID_RS AND @QUARTERID_RE AND ( CALNDRID = @CALNDRID AND YEAR1 = @YEAR1 AND QUARTERID > @QUARTERID OR CALNDRID = @CALNDRID AND YEAR1 > @YEAR1 OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, YEAR1 ASC, QUARTERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41000N_2] TO [DYNGRP]
GO
