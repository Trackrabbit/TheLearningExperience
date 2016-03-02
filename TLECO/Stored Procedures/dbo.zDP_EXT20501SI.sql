SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20501SI] (@Extender_View_ID char(15), @LNITMSEQ int, @Link_To_Product_ID smallint, @Link_To_Table char(101), @PRODID smallint, @TABLTECH char(79), @Extender_View_From_Type smallint, @Extender_View_Table_Type smallint, @Extender_From_Line int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20501 (Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line) VALUES ( @Extender_View_ID, @LNITMSEQ, @Link_To_Product_ID, @Link_To_Table, @PRODID, @TABLTECH, @Extender_View_From_Type, @Extender_View_Table_Type, @Extender_From_Line) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20501SI] TO [DYNGRP]
GO
