SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTER022SS_2] (@TERMSETUPNAME_I char(31)) AS  set nocount on SELECT TOP 1  TERMSETUPCODE_I, TERMSETUPNAME_I, DEX_ROW_ID FROM .HRTER022 WHERE TERMSETUPNAME_I = @TERMSETUPNAME_I ORDER BY TERMSETUPNAME_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTER022SS_2] TO [DYNGRP]
GO
