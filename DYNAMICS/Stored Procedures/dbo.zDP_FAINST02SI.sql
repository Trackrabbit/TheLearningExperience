SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_FAINST02SI] (@Install_Date_and_Time char(31), @CMPANYID smallint, @Install_Step char(81), @Install_Component_Name char(81), @ERMSGTXT char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FAINST02 (Install_Date_and_Time, CMPANYID, Install_Step, Install_Component_Name, ERMSGTXT) VALUES ( @Install_Date_and_Time, @CMPANYID, @Install_Step, @Install_Component_Name, @ERMSGTXT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAINST02SI] TO [DYNGRP]
GO
