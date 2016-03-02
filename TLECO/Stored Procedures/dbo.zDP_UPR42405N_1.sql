SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42405N_1] (@BS int, @Restriction_Code char(15), @EMPLCLAS char(15), @Restriction_Code_RS char(15), @EMPLCLAS_RS char(15), @Restriction_Code_RE char(15), @EMPLCLAS_RE char(15)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE ( Restriction_Code = @Restriction_Code AND EMPLCLAS > @EMPLCLAS OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLCLAS ASC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE Restriction_Code = @Restriction_Code_RS AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Restriction_Code = @Restriction_Code AND EMPLCLAS > @EMPLCLAS OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLCLAS ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Restriction_Code = @Restriction_Code AND EMPLCLAS > @EMPLCLAS OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, EMPLCLAS ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42405N_1] TO [DYNGRP]
GO
