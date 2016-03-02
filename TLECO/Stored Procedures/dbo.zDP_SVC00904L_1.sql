SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00904L_1] (@priorityLevel_RS smallint, @priorityLevel_RE smallint) AS  set nocount on IF @priorityLevel_RS IS NULL BEGIN SELECT TOP 25  priorityLevel, DSCRIPTN, DEX_ROW_ID FROM .SVC00904 ORDER BY priorityLevel DESC END ELSE IF @priorityLevel_RS = @priorityLevel_RE BEGIN SELECT TOP 25  priorityLevel, DSCRIPTN, DEX_ROW_ID FROM .SVC00904 WHERE priorityLevel = @priorityLevel_RS ORDER BY priorityLevel DESC END ELSE BEGIN SELECT TOP 25  priorityLevel, DSCRIPTN, DEX_ROW_ID FROM .SVC00904 WHERE priorityLevel BETWEEN @priorityLevel_RS AND @priorityLevel_RE ORDER BY priorityLevel DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00904L_1] TO [DYNGRP]
GO
