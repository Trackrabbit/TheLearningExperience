SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07255L_1] (@ActionStatusID_RS int, @ORD_RS int, @ActionStatusID_RE int, @ORD_RE int) AS  set nocount on IF @ActionStatusID_RS IS NULL BEGIN SELECT TOP 25  ActionStatusID, ORD, ERMSGTXT, ERRVAL, REFRENCE, User_Defined_Date01, User_Defined_Date02, User_Defined_LongInt01, User_Defined_LongInt02, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, VERIFIED, DEX_ROW_ID FROM .SY07255 ORDER BY ActionStatusID DESC, ORD DESC END ELSE IF @ActionStatusID_RS = @ActionStatusID_RE BEGIN SELECT TOP 25  ActionStatusID, ORD, ERMSGTXT, ERRVAL, REFRENCE, User_Defined_Date01, User_Defined_Date02, User_Defined_LongInt01, User_Defined_LongInt02, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, VERIFIED, DEX_ROW_ID FROM .SY07255 WHERE ActionStatusID = @ActionStatusID_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ActionStatusID DESC, ORD DESC END ELSE BEGIN SELECT TOP 25  ActionStatusID, ORD, ERMSGTXT, ERRVAL, REFRENCE, User_Defined_Date01, User_Defined_Date02, User_Defined_LongInt01, User_Defined_LongInt02, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, VERIFIED, DEX_ROW_ID FROM .SY07255 WHERE ActionStatusID BETWEEN @ActionStatusID_RS AND @ActionStatusID_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ActionStatusID DESC, ORD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07255L_1] TO [DYNGRP]
GO
