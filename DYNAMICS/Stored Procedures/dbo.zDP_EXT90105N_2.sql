SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90105N_2] (@BS int, @PRODID smallint, @RPRTNAME char(31), @PRODID_RS smallint, @RPRTNAME_RS char(31), @PRODID_RE smallint, @RPRTNAME_RE char(31)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Series_Number, RPRTNAME, DEX_ROW_ID FROM .EXT90105 WHERE ( PRODID = @PRODID AND RPRTNAME > @RPRTNAME OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPRTNAME ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Series_Number, RPRTNAME, DEX_ROW_ID FROM .EXT90105 WHERE PRODID = @PRODID_RS AND RPRTNAME BETWEEN @RPRTNAME_RS AND @RPRTNAME_RE AND ( PRODID = @PRODID AND RPRTNAME > @RPRTNAME OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPRTNAME ASC END ELSE BEGIN SELECT TOP 25  PRODID, Series_Number, RPRTNAME, DEX_ROW_ID FROM .EXT90105 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND RPRTNAME BETWEEN @RPRTNAME_RS AND @RPRTNAME_RE AND ( PRODID = @PRODID AND RPRTNAME > @RPRTNAME OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPRTNAME ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90105N_2] TO [DYNGRP]
GO
