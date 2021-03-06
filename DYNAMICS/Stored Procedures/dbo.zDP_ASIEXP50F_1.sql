SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP50F_1] (@ASI_Export_Application_RS smallint, @ASI_Export_Name_RS char(51), @ASI_Export_Application_RE smallint, @ASI_Export_Name_RE char(51)) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Export_Application_RS IS NULL BEGIN SELECT TOP 25  ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After, DEX_ROW_ID FROM .ASIEXP50 ORDER BY ASI_Export_Application ASC, ASI_Export_Name ASC END ELSE IF @ASI_Export_Application_RS = @ASI_Export_Application_RE BEGIN SELECT TOP 25  ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After, DEX_ROW_ID FROM .ASIEXP50 WHERE ASI_Export_Application = @ASI_Export_Application_RS AND ASI_Export_Name BETWEEN @ASI_Export_Name_RS AND @ASI_Export_Name_RE ORDER BY ASI_Export_Application ASC, ASI_Export_Name ASC END ELSE BEGIN SELECT TOP 25  ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After, DEX_ROW_ID FROM .ASIEXP50 WHERE ASI_Export_Application BETWEEN @ASI_Export_Application_RS AND @ASI_Export_Application_RE AND ASI_Export_Name BETWEEN @ASI_Export_Name_RS AND @ASI_Export_Name_RE ORDER BY ASI_Export_Application ASC, ASI_Export_Name ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP50F_1] TO [DYNGRP]
GO
