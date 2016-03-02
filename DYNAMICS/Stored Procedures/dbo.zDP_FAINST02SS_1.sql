SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_FAINST02SS_1] (@Install_Date_and_Time char(31), @CMPANYID smallint, @Install_Step char(81), @Install_Component_Name char(81)) AS  set nocount on SELECT TOP 1  Install_Date_and_Time, CMPANYID, Install_Step, Install_Component_Name, ERMSGTXT, DEX_ROW_ID FROM .FAINST02 WHERE Install_Date_and_Time = @Install_Date_and_Time AND CMPANYID = @CMPANYID AND Install_Step = @Install_Step AND Install_Component_Name = @Install_Component_Name ORDER BY Install_Date_and_Time ASC, CMPANYID ASC, Install_Step ASC, Install_Component_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAINST02SS_1] TO [DYNGRP]
GO
