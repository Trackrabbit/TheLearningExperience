SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01000SI] (@Extender_Type smallint, @Extender_Form_ID char(15), @UD_Field_ID char(151), @UD_Form_Field_ID_2 char(31), @Extender_Record_ID int, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .EXT01000 (Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID) VALUES ( @Extender_Type, @Extender_Form_ID, @UD_Field_ID, @UD_Form_Field_ID_2, @Extender_Record_ID, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01000SI] TO [DYNGRP]
GO
