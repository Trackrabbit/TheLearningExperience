SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06200SS_2] (@DSCRIPTN char(31)) AS  set nocount on SELECT TOP 1  SERVICEBOM, DSCRIPTN, DEX_ROW_ID FROM .SVC06200 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06200SS_2] TO [DYNGRP]
GO
