SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5003F_1] (@Remote_Company_ID_RS char(5), @Remote_Company_ID_RE char(5)) AS /* 14.00.0084.000 */ set nocount on IF @Remote_Company_ID_RS IS NULL BEGIN SELECT TOP 25  Remote_Company_ID, NC_Export_FileName, DEX_ROW_ID FROM .NCIC5003 ORDER BY Remote_Company_ID ASC END ELSE IF @Remote_Company_ID_RS = @Remote_Company_ID_RE BEGIN SELECT TOP 25  Remote_Company_ID, NC_Export_FileName, DEX_ROW_ID FROM .NCIC5003 WHERE Remote_Company_ID = @Remote_Company_ID_RS ORDER BY Remote_Company_ID ASC END ELSE BEGIN SELECT TOP 25  Remote_Company_ID, NC_Export_FileName, DEX_ROW_ID FROM .NCIC5003 WHERE Remote_Company_ID BETWEEN @Remote_Company_ID_RS AND @Remote_Company_ID_RE ORDER BY Remote_Company_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003F_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003F_1] TO [public]
GO
