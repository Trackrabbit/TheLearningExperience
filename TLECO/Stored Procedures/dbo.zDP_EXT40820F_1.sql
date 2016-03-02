SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40820F_1] (@Extender_Page_ID_RS char(15), @COLNUMBR_RS smallint, @Page_Section_Number_RS smallint, @Extender_Page_ID_RE char(15), @COLNUMBR_RE smallint, @Page_Section_Number_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Page_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, Page_Section_Name, Expand_Section, DEX_ROW_ID FROM .EXT40820 ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC END ELSE IF @Extender_Page_ID_RS = @Extender_Page_ID_RE BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, Page_Section_Name, Expand_Section, DEX_ROW_ID FROM .EXT40820 WHERE Extender_Page_ID = @Extender_Page_ID_RS AND COLNUMBR BETWEEN @COLNUMBR_RS AND @COLNUMBR_RE AND Page_Section_Number BETWEEN @Page_Section_Number_RS AND @Page_Section_Number_RE ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC END ELSE BEGIN SELECT TOP 25  Extender_Page_ID, COLNUMBR, Page_Section_Number, Page_Section_Name, Expand_Section, DEX_ROW_ID FROM .EXT40820 WHERE Extender_Page_ID BETWEEN @Extender_Page_ID_RS AND @Extender_Page_ID_RE AND COLNUMBR BETWEEN @COLNUMBR_RS AND @COLNUMBR_RE AND Page_Section_Number BETWEEN @Page_Section_Number_RS AND @Page_Section_Number_RE ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40820F_1] TO [DYNGRP]
GO
