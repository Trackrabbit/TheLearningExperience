SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP50SS_2] (@ASI_Export_Name char(51), @ASI_Export_Application smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After, DEX_ROW_ID FROM .ASIEXP50 WHERE ASI_Export_Name = @ASI_Export_Name AND ASI_Export_Application = @ASI_Export_Application ORDER BY ASI_Export_Name ASC, ASI_Export_Application ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP50SS_2] TO [DYNGRP]
GO
