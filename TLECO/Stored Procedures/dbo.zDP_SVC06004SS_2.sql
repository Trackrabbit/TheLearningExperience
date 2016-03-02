SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06004SS_2] (@DSCRIPTN char(31)) AS  set nocount on SELECT TOP 1  ANALCODE, DSCRIPTN, ROUTEID, DEX_ROW_ID FROM .SVC06004 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06004SS_2] TO [DYNGRP]
GO
