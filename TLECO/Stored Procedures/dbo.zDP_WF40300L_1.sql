SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40300L_1] (@DayOfWeek_RS smallint, @DayOfWeek_RE smallint) AS  set nocount on IF @DayOfWeek_RS IS NULL BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 ORDER BY DayOfWeek DESC END ELSE IF @DayOfWeek_RS = @DayOfWeek_RE BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE DayOfWeek = @DayOfWeek_RS ORDER BY DayOfWeek DESC END ELSE BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE ORDER BY DayOfWeek DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40300L_1] TO [DYNGRP]
GO