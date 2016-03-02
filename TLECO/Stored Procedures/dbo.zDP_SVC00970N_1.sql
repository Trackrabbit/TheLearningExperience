SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00970N_1] (@BS int, @ShortName char(41), @ShortName_RS char(41), @ShortName_RE char(41)) AS  set nocount on IF @ShortName_RS IS NULL BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ( ShortName > @ShortName ) ORDER BY ShortName ASC END ELSE IF @ShortName_RS = @ShortName_RE BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ShortName = @ShortName_RS AND ( ShortName > @ShortName ) ORDER BY ShortName ASC END ELSE BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ShortName BETWEEN @ShortName_RS AND @ShortName_RE AND ( ShortName > @ShortName ) ORDER BY ShortName ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00970N_1] TO [DYNGRP]
GO
