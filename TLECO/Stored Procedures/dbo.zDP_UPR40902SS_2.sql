SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40902SS_2] (@DEDNSQNC smallint) AS  set nocount on SELECT TOP 1  DEDUCTON, DEDNSQNC, DEX_ROW_ID FROM .UPR40902 WHERE DEDNSQNC = @DEDNSQNC ORDER BY DEDNSQNC ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40902SS_2] TO [DYNGRP]
GO
