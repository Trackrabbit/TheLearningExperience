SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SYUPDATEL_1] (@UPDATENAME_RS char(41), @UPDATENAME_RE char(41)) AS  set nocount on IF @UPDATENAME_RS IS NULL BEGIN SELECT TOP 25  UPDATENAME, POST, UNCPATH, UPDATEFILE, NOTEINDX, DEX_ROW_ID FROM .SYUPDATE ORDER BY UPDATENAME DESC END ELSE IF @UPDATENAME_RS = @UPDATENAME_RE BEGIN SELECT TOP 25  UPDATENAME, POST, UNCPATH, UPDATEFILE, NOTEINDX, DEX_ROW_ID FROM .SYUPDATE WHERE UPDATENAME = @UPDATENAME_RS ORDER BY UPDATENAME DESC END ELSE BEGIN SELECT TOP 25  UPDATENAME, POST, UNCPATH, UPDATEFILE, NOTEINDX, DEX_ROW_ID FROM .SYUPDATE WHERE UPDATENAME BETWEEN @UPDATENAME_RS AND @UPDATENAME_RE ORDER BY UPDATENAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SYUPDATEL_1] TO [DYNGRP]
GO
