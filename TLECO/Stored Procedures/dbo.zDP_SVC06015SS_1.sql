SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06015SS_1] (@ROUTEID char(11), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  ROUTEID, ITEMNMBR, DEX_ROW_ID FROM .SVC06015 WHERE ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR ORDER BY ROUTEID ASC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06015SS_1] TO [DYNGRP]
GO