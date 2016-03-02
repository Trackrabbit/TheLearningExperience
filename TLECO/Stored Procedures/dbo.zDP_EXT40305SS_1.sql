SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40305SS_1] (@Extender_Form_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Form_ID, Next_ID_Field_Value, DEX_ROW_ID FROM .EXT40305 WHERE Extender_Form_ID = @Extender_Form_ID ORDER BY Extender_Form_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40305SS_1] TO [DYNGRP]
GO
