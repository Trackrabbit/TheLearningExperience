SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20130F_2] (@PRODID_RS smallint, @Extender_SmartList_Num_RS smallint, @SmartList_Prefix_RS smallint, @PRODID_RE smallint, @Extender_SmartList_Num_RE smallint, @SmartList_Prefix_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 ORDER BY PRODID ASC, Extender_SmartList_Num ASC, SmartList_Prefix ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 WHERE PRODID = @PRODID_RS AND Extender_SmartList_Num BETWEEN @Extender_SmartList_Num_RS AND @Extender_SmartList_Num_RE AND SmartList_Prefix BETWEEN @SmartList_Prefix_RS AND @SmartList_Prefix_RE ORDER BY PRODID ASC, Extender_SmartList_Num ASC, SmartList_Prefix ASC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, PRODID, Extender_SmartList_Num, SmartList_Prefix, Extender_SmartList_Keys_1, Extender_SmartList_Keys_2, Extender_SmartList_Keys_3, Extender_SmartList_Keys_4, Extender_SmartList_Keys_5, DEX_ROW_ID FROM .EXT20130 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Extender_SmartList_Num BETWEEN @Extender_SmartList_Num_RS AND @Extender_SmartList_Num_RE AND SmartList_Prefix BETWEEN @SmartList_Prefix_RS AND @SmartList_Prefix_RE ORDER BY PRODID ASC, Extender_SmartList_Num ASC, SmartList_Prefix ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20130F_2] TO [DYNGRP]
GO
