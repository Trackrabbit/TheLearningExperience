SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD010000SS_1] (@DOWNDAYS_I datetime) AS  set nocount on SELECT TOP 1  DOWNDAYS_I, DEX_ROW_ID FROM .DD010000 WHERE DOWNDAYS_I = @DOWNDAYS_I ORDER BY DOWNDAYS_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD010000SS_1] TO [DYNGRP]
GO
