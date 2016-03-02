SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42404F_1] (@Restriction_Code_RS char(15), @JOBTITLE_RS char(7), @Restriction_Code_RE char(15), @JOBTITLE_RE char(7)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, JOBTITLE, DEX_ROW_ID FROM .UPR42404 ORDER BY Restriction_Code ASC, JOBTITLE ASC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, JOBTITLE, DEX_ROW_ID FROM .UPR42404 WHERE Restriction_Code = @Restriction_Code_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY Restriction_Code ASC, JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, JOBTITLE, DEX_ROW_ID FROM .UPR42404 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY Restriction_Code ASC, JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42404F_1] TO [DYNGRP]
GO
