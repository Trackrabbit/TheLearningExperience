SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42402N_2] (@BS int, @LOCATNID char(15), @Restriction_Code char(15), @LOCATNID_RS char(15), @Restriction_Code_RS char(15), @LOCATNID_RE char(15), @Restriction_Code_RE char(15)) AS  set nocount on IF @LOCATNID_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE ( LOCATNID = @LOCATNID AND Restriction_Code > @Restriction_Code OR LOCATNID > @LOCATNID ) ORDER BY LOCATNID ASC, Restriction_Code ASC END ELSE IF @LOCATNID_RS = @LOCATNID_RE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE LOCATNID = @LOCATNID_RS AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( LOCATNID = @LOCATNID AND Restriction_Code > @Restriction_Code OR LOCATNID > @LOCATNID ) ORDER BY LOCATNID ASC, Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( LOCATNID = @LOCATNID AND Restriction_Code > @Restriction_Code OR LOCATNID > @LOCATNID ) ORDER BY LOCATNID ASC, Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42402N_2] TO [DYNGRP]
GO
