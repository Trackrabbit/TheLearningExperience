SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42201N_1] (@BS int, @Time_on_Behalf_Code char(15), @DEPRTMNT char(7), @Time_on_Behalf_Code_RS char(15), @DEPRTMNT_RS char(7), @Time_on_Behalf_Code_RE char(15), @DEPRTMNT_RE char(7)) AS  set nocount on IF @Time_on_Behalf_Code_RS IS NULL BEGIN SELECT TOP 25  Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42201 WHERE ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND DEPRTMNT > @DEPRTMNT OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, DEPRTMNT ASC END ELSE IF @Time_on_Behalf_Code_RS = @Time_on_Behalf_Code_RE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42201 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code_RS AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND DEPRTMNT > @DEPRTMNT OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, DEPRTMNT ASC END ELSE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42201 WHERE Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND ( Time_on_Behalf_Code = @Time_on_Behalf_Code AND DEPRTMNT > @DEPRTMNT OR Time_on_Behalf_Code > @Time_on_Behalf_Code ) ORDER BY Time_on_Behalf_Code ASC, DEPRTMNT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42201N_1] TO [DYNGRP]
GO
