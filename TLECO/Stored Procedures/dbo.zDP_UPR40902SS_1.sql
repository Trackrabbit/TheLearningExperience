SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40902SS_1] (@DEDUCTON char(7)) AS  set nocount on SELECT TOP 1  DEDUCTON, DEDNSQNC, DEX_ROW_ID FROM .UPR40902 WHERE DEDUCTON = @DEDUCTON ORDER BY DEDUCTON ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40902SS_1] TO [DYNGRP]
GO
