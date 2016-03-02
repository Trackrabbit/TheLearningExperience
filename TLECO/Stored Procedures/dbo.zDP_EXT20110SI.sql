SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20110SI] (@Extender_Window_ID char(15), @LNITMSEQ int, @PRODID smallint, @TABLTECH char(79), @Extender_Key_Fields_1 char(101), @Extender_Key_Fields_2 char(101), @Extender_Key_Fields_3 char(101), @Extender_Key_Fields_4 char(101), @Extender_Key_Fields_5 char(101), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20110 (Extender_Window_ID, LNITMSEQ, PRODID, TABLTECH, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5) VALUES ( @Extender_Window_ID, @LNITMSEQ, @PRODID, @TABLTECH, @Extender_Key_Fields_1, @Extender_Key_Fields_2, @Extender_Key_Fields_3, @Extender_Key_Fields_4, @Extender_Key_Fields_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20110SI] TO [DYNGRP]
GO
