SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100140UN_2] (@BS int, @CLASSID char(15), @CLASSID_RS char(15), @CLASSID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CLASSID_RS IS NULL BEGIN SELECT TOP 25  MODULE1, CLASSID, DEX_ROW_ID FROM .B7100140 WHERE ( CLASSID > @CLASSID ) ORDER BY CLASSID ASC, DEX_ROW_ID ASC END ELSE IF @CLASSID_RS = @CLASSID_RE BEGIN SELECT TOP 25  MODULE1, CLASSID, DEX_ROW_ID FROM .B7100140 WHERE CLASSID = @CLASSID_RS AND ( CLASSID > @CLASSID ) ORDER BY CLASSID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MODULE1, CLASSID, DEX_ROW_ID FROM .B7100140 WHERE CLASSID BETWEEN @CLASSID_RS AND @CLASSID_RE AND ( CLASSID > @CLASSID ) ORDER BY CLASSID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100140UN_2] TO [DYNGRP]
GO
