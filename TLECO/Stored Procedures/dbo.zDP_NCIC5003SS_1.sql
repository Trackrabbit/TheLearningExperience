SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5003SS_1] (@Remote_Company_ID char(5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Remote_Company_ID, NC_Export_FileName, DEX_ROW_ID FROM .NCIC5003 WHERE Remote_Company_ID = @Remote_Company_ID ORDER BY Remote_Company_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003SS_1] TO [public]
GO
