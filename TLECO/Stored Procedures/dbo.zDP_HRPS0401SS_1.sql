SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPS0401SS_1] (@PYSTPTBLID char(15), @Effective_Date datetime, @Step smallint) AS  set nocount on SELECT TOP 1  PYSTPTBLID, Effective_Date, Step, Months_In_Step_Start, Months_In_Step_End, PAYRTAMT, DEX_ROW_ID FROM .HRPS0401 WHERE PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step = @Step ORDER BY PYSTPTBLID ASC, Effective_Date ASC, Step ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPS0401SS_1] TO [DYNGRP]
GO
