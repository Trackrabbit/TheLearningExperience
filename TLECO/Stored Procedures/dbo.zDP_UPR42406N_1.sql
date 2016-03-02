SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42406N_1] (@BS int, @Restriction_Code char(15), @EMPLOYID char(15), @Restriction_Code_RS char(15), @EMPLOYID_RS char(15), @Restriction_Code_RE char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE ( Restriction_Code = @Restriction_Code AND EMPLOYID > @EMPLOYID OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLOYID ASC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE Restriction_Code = @Restriction_Code_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( Restriction_Code = @Restriction_Code AND EMPLOYID > @EMPLOYID OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( Restriction_Code = @Restriction_Code AND EMPLOYID > @EMPLOYID OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42406N_1] TO [DYNGRP]
GO
