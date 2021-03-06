SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40902N_1] (@BS int, @DEDUCTON char(7), @DEDUCTON_RS char(7), @DEDUCTON_RE char(7)) AS  set nocount on IF @DEDUCTON_RS IS NULL BEGIN SELECT TOP 25  DEDUCTON, DEDNSQNC, DEX_ROW_ID FROM .UPR40902 WHERE ( DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC END ELSE IF @DEDUCTON_RS = @DEDUCTON_RE BEGIN SELECT TOP 25  DEDUCTON, DEDNSQNC, DEX_ROW_ID FROM .UPR40902 WHERE DEDUCTON = @DEDUCTON_RS AND ( DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC END ELSE BEGIN SELECT TOP 25  DEDUCTON, DEDNSQNC, DEX_ROW_ID FROM .UPR40902 WHERE DEDUCTON BETWEEN @DEDUCTON_RS AND @DEDUCTON_RE AND ( DEDUCTON > @DEDUCTON ) ORDER BY DEDUCTON ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40902N_1] TO [DYNGRP]
GO
