SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10306SS_1] (@POPRCTNM char(17)) AS  set nocount on SELECT TOP 1  POPRCTNM, User_Defined_List01, User_Defined_List02, User_Defined_List03, User_Defined_List04, User_Defined_List05, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, User_Defined_Text06, User_Defined_Text07, User_Defined_Text08, User_Defined_Text09, User_Defined_Text10, User_Defined_Date01, User_Defined_Date02, User_Defined_Date03, User_Defined_Date04, User_Defined_Date05, User_Defined_Date06, User_Defined_Date07, User_Defined_Date08, User_Defined_Date09, User_Defined_Date10, User_Defined_Date11, User_Defined_Date12, User_Defined_Date13, User_Defined_Date14, User_Defined_Date15, User_Defined_Date16, User_Defined_Date17, User_Defined_Date18, User_Defined_Date19, User_Defined_Date20, DEX_ROW_ID FROM .POP10306 WHERE POPRCTNM = @POPRCTNM ORDER BY POPRCTNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10306SS_1] TO [DYNGRP]
GO
