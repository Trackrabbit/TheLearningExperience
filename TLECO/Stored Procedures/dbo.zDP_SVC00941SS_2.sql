SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00941SS_2] (@TASKCDDSC char(31)) AS  set nocount on SELECT TOP 1  TASKCD, TASKCDDSC, DEX_ROW_ID FROM .SVC00941 WHERE TASKCDDSC = @TASKCDDSC ORDER BY TASKCDDSC ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00941SS_2] TO [DYNGRP]
GO