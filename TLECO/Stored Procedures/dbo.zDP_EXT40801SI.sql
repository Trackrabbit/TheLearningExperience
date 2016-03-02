SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40801SI] (@Extender_Menu_ID char(15), @LNITMSEQ int, @Menu_Item_Type smallint, @Extender_Type smallint, @Extender_Form_ID char(15), @PRODID smallint, @FORMNAME char(79), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT40801 (Extender_Menu_ID, LNITMSEQ, Menu_Item_Type, Extender_Type, Extender_Form_ID, PRODID, FORMNAME) VALUES ( @Extender_Menu_ID, @LNITMSEQ, @Menu_Item_Type, @Extender_Type, @Extender_Form_ID, @PRODID, @FORMNAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40801SI] TO [DYNGRP]
GO
