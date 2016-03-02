SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42402F_1] (@Restriction_Code_RS char(15), @LOCATNID_RS char(15), @Restriction_Code_RE char(15), @LOCATNID_RE char(15)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 ORDER BY Restriction_Code ASC, LOCATNID ASC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE Restriction_Code = @Restriction_Code_RS AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE ORDER BY Restriction_Code ASC, LOCATNID ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE ORDER BY Restriction_Code ASC, LOCATNID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42402F_1] TO [DYNGRP]
GO