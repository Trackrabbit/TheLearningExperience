SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TASCMFGF_1] (@TAMFGORDER_RS char(31), @TAMFGORDER_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @TAMFGORDER_RS IS NULL BEGIN SELECT TOP 25  TAMFGORDER, DEX_ROW_ID FROM .TASCMFG ORDER BY TAMFGORDER ASC, DEX_ROW_ID ASC END ELSE IF @TAMFGORDER_RS = @TAMFGORDER_RE BEGIN SELECT TOP 25  TAMFGORDER, DEX_ROW_ID FROM .TASCMFG WHERE TAMFGORDER = @TAMFGORDER_RS ORDER BY TAMFGORDER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TAMFGORDER, DEX_ROW_ID FROM .TASCMFG WHERE TAMFGORDER BETWEEN @TAMFGORDER_RS AND @TAMFGORDER_RE ORDER BY TAMFGORDER ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TASCMFGF_1] TO [DYNGRP]
GO