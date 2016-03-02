SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42200N_2] (@BS int, @DSCRIPTN char(31), @Time_on_Behalf_Code char(15), @DSCRIPTN_RS char(31), @Time_on_Behalf_Code_RS char(15), @DSCRIPTN_RE char(31), @Time_on_Behalf_Code_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE ( DSCRIPTN = @DSCRIPTN AND Time_on_Behalf_Code > @Time_on_Behalf_Code OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Time_on_Behalf_Code ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE DSCRIPTN = @DSCRIPTN_RS AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND ( DSCRIPTN = @DSCRIPTN AND Time_on_Behalf_Code > @Time_on_Behalf_Code OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Time_on_Behalf_Code ASC END ELSE BEGIN SELECT TOP 25  Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR42200 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND ( DSCRIPTN = @DSCRIPTN AND Time_on_Behalf_Code > @Time_on_Behalf_Code OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Time_on_Behalf_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42200N_2] TO [DYNGRP]
GO
