SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42202N_1] (@BS int, @Time_on_Behalf_Code char(15), @EMPLCLAS char(15), @Time_on_Behalf_Code_RS char(15), @EMPLCLAS_RS char(15), @Time_on_Behalf_Code_RE char(15), @EMPLCLAS_RE char(15)) AS  set nocount on IF @Time_on_Behalf_Code_RS IS NULL BEGIN SELECT TOP 25  Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42202 WHERE ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND EMPLCLAS > @EMPLCLAS OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, EMPLCLAS ASC END ELSE IF @Time_on_Behalf_Code_RS = @Time_on_Behalf_Code_RE BEGIN SELECT TOP 25  Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42202 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code_RS AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND EMPLCLAS > @EMPLCLAS OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, EMPLCLAS ASC END ELSE BEGIN SELECT TOP 25  Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42202 WHERE Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND EMPLCLAS > @EMPLCLAS OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, EMPLCLAS ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42202N_1] TO [DYNGRP]
GO
