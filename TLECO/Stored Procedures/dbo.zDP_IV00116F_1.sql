SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00116F_1] (@ITEMNMBR_RS char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, PrintPhaseComp, DEX_ROW_ID FROM .IV00116 ORDER BY ITEMNMBR ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, PrintPhaseComp, DEX_ROW_ID FROM .IV00116 WHERE ITEMNMBR = @ITEMNMBR_RS ORDER BY ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, PrintPhaseComp, DEX_ROW_ID FROM .IV00116 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00116F_1] TO [DYNGRP]
GO
