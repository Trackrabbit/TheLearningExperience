SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20130F_1] (@Extender_Window_ID_RS char(15), @PRODID_RS smallint, @Extender_SmartList_Num_RS smallint, @Extender_Window_ID_RE char(15), @PRODID_RE smallint, @Extender_SmartList_Num_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Window_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 ORDER BY Extender_Window_ID ASC, PRODID ASC, Extender_SmartList_Num ASC END ELSE IF @Extender_Window_ID_RS = @Extender_Window_ID_RE BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 WHERE Extender_Window_ID = @Extender_Window_ID_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Extender_SmartList_Num BETWEEN @Extender_SmartList_Num_RS AND @Extender_SmartList_Num_RE ORDER BY Extender_Window_ID ASC, PRODID ASC, Extender_SmartList_Num ASC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 WHERE Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Extender_SmartList_Num BETWEEN @Extender_SmartList_Num_RS AND @Extender_SmartList_Num_RE ORDER BY Extender_Window_ID ASC, PRODID ASC, Extender_SmartList_Num ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20130F_1] TO [DYNGRP]
GO
