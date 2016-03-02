SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP50SS_1] (@ASI_Export_Application smallint, @ASI_Export_Name char(51)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After, DEX_ROW_ID FROM .ASIEXP50 WHERE ASI_Export_Application = @ASI_Export_Application AND ASI_Export_Name = @ASI_Export_Name ORDER BY ASI_Export_Application ASC, ASI_Export_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP50SS_1] TO [DYNGRP]
GO
