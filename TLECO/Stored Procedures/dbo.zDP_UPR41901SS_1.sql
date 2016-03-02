SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41901SS_1] (@EARNINGSCODE char(15), @PAYRCORD char(7)) AS  set nocount on SELECT TOP 1  EARNINGSCODE, PAYRCORD, DEX_ROW_ID FROM .UPR41901 WHERE EARNINGSCODE = @EARNINGSCODE AND PAYRCORD = @PAYRCORD ORDER BY EARNINGSCODE ASC, PAYRCORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41901SS_1] TO [DYNGRP]
GO
