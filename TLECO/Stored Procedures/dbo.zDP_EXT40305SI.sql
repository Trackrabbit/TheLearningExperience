SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40305SI] (@Extender_Form_ID char(15), @Next_ID_Field_Value char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT40305 (Extender_Form_ID, Next_ID_Field_Value) VALUES ( @Extender_Form_ID, @Next_ID_Field_Value) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40305SI] TO [DYNGRP]
GO
