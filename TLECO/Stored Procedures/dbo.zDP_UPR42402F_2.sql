SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42402F_2] (@LOCATNID_RS char(15), @Restriction_Code_RS char(15), @LOCATNID_RE char(15), @Restriction_Code_RE char(15)) AS  set nocount on IF @LOCATNID_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 ORDER BY LOCATNID ASC, Restriction_Code ASC END ELSE IF @LOCATNID_RS = @LOCATNID_RE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE LOCATNID = @LOCATNID_RS AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE ORDER BY LOCATNID ASC, Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE ORDER BY LOCATNID ASC, Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42402F_2] TO [DYNGRP]
GO