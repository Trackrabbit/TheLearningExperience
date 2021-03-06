SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_FAINST01N_1] (@BS int, @CMPANYID smallint, @CMPANYID_RS smallint, @CMPANYID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, Major_Version, Minor_Version, Build_Number, DEX_ROW_ID FROM .FAINST01 WHERE ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, Major_Version, Minor_Version, Build_Number, DEX_ROW_ID FROM .FAINST01 WHERE CMPANYID = @CMPANYID_RS AND ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, Major_Version, Minor_Version, Build_Number, DEX_ROW_ID FROM .FAINST01 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAINST01N_1] TO [DYNGRP]
GO
