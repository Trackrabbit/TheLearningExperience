SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06301SS_2] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  DATE1, TIME1, Status, STRTDATE, STRTTIME, ENDDATE, ENDTIME, DEX_ROW_ID FROM .SVC06301 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06301SS_2] TO [DYNGRP]
GO
