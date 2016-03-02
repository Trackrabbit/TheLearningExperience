SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40820SS_1] (@Extender_Page_ID char(15), @COLNUMBR smallint, @Page_Section_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Page_ID, COLNUMBR, Page_Section_Number, Page_Section_Name, Expand_Section, DEX_ROW_ID FROM .EXT40820 WHERE Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number ORDER BY Extender_Page_ID ASC, COLNUMBR ASC, Page_Section_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40820SS_1] TO [DYNGRP]
GO
