SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42405F_2] (@EMPLCLAS_RS char(15), @Restriction_Code_RS char(15), @EMPLCLAS_RE char(15), @Restriction_Code_RE char(15)) AS  set nocount on IF @EMPLCLAS_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 ORDER BY EMPLCLAS ASC, Restriction_Code ASC END ELSE IF @EMPLCLAS_RS = @EMPLCLAS_RE BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE EMPLCLAS = @EMPLCLAS_RS AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE ORDER BY EMPLCLAS ASC, Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE ORDER BY EMPLCLAS ASC, Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42405F_2] TO [DYNGRP]
GO
