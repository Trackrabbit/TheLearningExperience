SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00941SS_1] (@TASKCD char(11)) AS  set nocount on SELECT TOP 1  TASKCD, TASKCDDSC, DEX_ROW_ID FROM .SVC00941 WHERE TASKCD = @TASKCD ORDER BY TASKCD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00941SS_1] TO [DYNGRP]
GO