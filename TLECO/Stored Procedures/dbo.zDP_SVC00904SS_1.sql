SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00904SS_1] (@priorityLevel smallint) AS  set nocount on SELECT TOP 1  priorityLevel, DSCRIPTN, DEX_ROW_ID FROM .SVC00904 WHERE priorityLevel = @priorityLevel ORDER BY priorityLevel ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00904SS_1] TO [DYNGRP]
GO
