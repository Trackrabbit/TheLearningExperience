SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40300N_2] (@BS int, @CMPANYID smallint, @PRODID smallint, @CMPANYID_RS smallint, @PRODID_RS smallint, @CMPANYID_RE smallint, @PRODID_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  PRODID, CMPANYID, CURVERSION, MEACTIVATED, DEX_ROW_ID FROM .MEP40300 WHERE ( CMPANYID = @CMPANYID AND PRODID > @PRODID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, PRODID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  PRODID, CMPANYID, CURVERSION, MEACTIVATED, DEX_ROW_ID FROM .MEP40300 WHERE CMPANYID = @CMPANYID_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( CMPANYID = @CMPANYID AND PRODID > @PRODID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, PRODID ASC END ELSE BEGIN SELECT TOP 25  PRODID, CMPANYID, CURVERSION, MEACTIVATED, DEX_ROW_ID FROM .MEP40300 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( CMPANYID = @CMPANYID AND PRODID > @PRODID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, PRODID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40300N_2] TO [DYNGRP]
GO
