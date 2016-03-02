SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40810SI] (@Extender_Page_ID char(15), @Extender_Page_Name char(65), @Navigation_Pane smallint, @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT40810 (Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX) VALUES ( @Extender_Page_ID, @Extender_Page_Name, @Navigation_Pane, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40810SI] TO [DYNGRP]
GO
