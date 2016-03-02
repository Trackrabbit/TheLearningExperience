SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07255SS_1] (@ActionStatusID int, @ORD int) AS  set nocount on SELECT TOP 1  ActionStatusID, ORD, ERMSGTXT, ERRVAL, REFRENCE, User_Defined_Date01, User_Defined_Date02, User_Defined_LongInt01, User_Defined_LongInt02, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, VERIFIED, DEX_ROW_ID FROM .SY07255 WHERE ActionStatusID = @ActionStatusID AND ORD = @ORD ORDER BY ActionStatusID ASC, ORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07255SS_1] TO [DYNGRP]
GO
