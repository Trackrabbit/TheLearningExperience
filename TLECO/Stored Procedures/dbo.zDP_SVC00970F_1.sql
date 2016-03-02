SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00970F_1] (@ShortName_RS char(41), @ShortName_RE char(41)) AS  set nocount on IF @ShortName_RS IS NULL BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 ORDER BY ShortName ASC END ELSE IF @ShortName_RS = @ShortName_RE BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ShortName = @ShortName_RS ORDER BY ShortName ASC END ELSE BEGIN SELECT TOP 25  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ShortName BETWEEN @ShortName_RS AND @ShortName_RE ORDER BY ShortName ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00970F_1] TO [DYNGRP]
GO
