SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40300N_1] (@BS int, @DayOfWeek smallint, @DayOfWeek_RS smallint, @DayOfWeek_RE smallint) AS  set nocount on IF @DayOfWeek_RS IS NULL BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE ( DayOfWeek > @DayOfWeek ) ORDER BY DayOfWeek ASC END ELSE IF @DayOfWeek_RS = @DayOfWeek_RE BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE DayOfWeek = @DayOfWeek_RS AND ( DayOfWeek > @DayOfWeek ) ORDER BY DayOfWeek ASC END ELSE BEGIN SELECT TOP 25  DayOfWeek, IsWorkDay, STRTTIME, ENDTIME, DEX_ROW_ID FROM .WF40300 WHERE DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE AND ( DayOfWeek > @DayOfWeek ) ORDER BY DayOfWeek ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40300N_1] TO [DYNGRP]
GO
