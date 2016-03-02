SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40820SI] (@Extender_Page_ID char(15), @COLNUMBR smallint, @Page_Section_Number smallint, @Page_Section_Name char(65), @Expand_Section tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT40820 (Extender_Page_ID, COLNUMBR, Page_Section_Number, Page_Section_Name, Expand_Section) VALUES ( @Extender_Page_ID, @COLNUMBR, @Page_Section_Number, @Page_Section_Name, @Expand_Section) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40820SI] TO [DYNGRP]
GO
