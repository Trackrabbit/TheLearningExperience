SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC60100N_1] (@BS int, @CMPANYID smallint, @CURNCYID char(15), @CMPANYID_RS smallint, @CURNCYID_RS char(15), @CMPANYID_RE smallint, @CURNCYID_RE char(15)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, CURNCYID, INACTIVE, DEX_ROW_ID FROM .MC60100 WHERE ( CMPANYID = @CMPANYID AND CURNCYID > @CURNCYID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CURNCYID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, CURNCYID, INACTIVE, DEX_ROW_ID FROM .MC60100 WHERE CMPANYID = @CMPANYID_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ( CMPANYID = @CMPANYID AND CURNCYID > @CURNCYID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CURNCYID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, CURNCYID, INACTIVE, DEX_ROW_ID FROM .MC60100 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ( CMPANYID = @CMPANYID AND CURNCYID > @CURNCYID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CURNCYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC60100N_1] TO [DYNGRP]
GO
