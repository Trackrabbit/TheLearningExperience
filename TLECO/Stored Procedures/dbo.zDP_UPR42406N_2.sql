SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42406N_2] (@BS int, @EMPLOYID char(15), @Restriction_Code char(15), @EMPLOYID_RS char(15), @Restriction_Code_RS char(15), @EMPLOYID_RE char(15), @Restriction_Code_RE char(15)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE ( EMPLOYID = @EMPLOYID AND Restriction_Code > @Restriction_Code OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, Restriction_Code ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE EMPLOYID = @EMPLOYID_RS AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( EMPLOYID = @EMPLOYID AND Restriction_Code > @Restriction_Code OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( EMPLOYID = @EMPLOYID AND Restriction_Code > @Restriction_Code OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42406N_2] TO [DYNGRP]
GO
