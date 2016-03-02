SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00910F_2] (@ZIPCODE_RS char(11), @ZIPCODE_RE char(11)) AS  set nocount on IF @ZIPCODE_RS IS NULL BEGIN SELECT TOP 25  SVCAREA, ZIPCODE, DEX_ROW_ID FROM .SVC00910 ORDER BY ZIPCODE ASC, DEX_ROW_ID ASC END ELSE IF @ZIPCODE_RS = @ZIPCODE_RE BEGIN SELECT TOP 25  SVCAREA, ZIPCODE, DEX_ROW_ID FROM .SVC00910 WHERE ZIPCODE = @ZIPCODE_RS ORDER BY ZIPCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SVCAREA, ZIPCODE, DEX_ROW_ID FROM .SVC00910 WHERE ZIPCODE BETWEEN @ZIPCODE_RS AND @ZIPCODE_RE ORDER BY ZIPCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00910F_2] TO [DYNGRP]
GO
