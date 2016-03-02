SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40705F_1] (@PRCBKID_RS char(15), @PRCBKID_RE char(15)) AS  set nocount on IF @PRCBKID_RS IS NULL BEGIN SELECT TOP 25  PRCBKID, DATE1, DEX_ROW_ID FROM .SOP40705 ORDER BY PRCBKID ASC END ELSE IF @PRCBKID_RS = @PRCBKID_RE BEGIN SELECT TOP 25  PRCBKID, DATE1, DEX_ROW_ID FROM .SOP40705 WHERE PRCBKID = @PRCBKID_RS ORDER BY PRCBKID ASC END ELSE BEGIN SELECT TOP 25  PRCBKID, DATE1, DEX_ROW_ID FROM .SOP40705 WHERE PRCBKID BETWEEN @PRCBKID_RS AND @PRCBKID_RE ORDER BY PRCBKID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40705F_1] TO [DYNGRP]
GO
