SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40300SS_1] (@DayOfWeek smallint) AS  set nocount on SELECT TOP 1  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE DayOfWeek = @DayOfWeek ORDER BY DayOfWeek ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40300SS_1] TO [DYNGRP]
GO
