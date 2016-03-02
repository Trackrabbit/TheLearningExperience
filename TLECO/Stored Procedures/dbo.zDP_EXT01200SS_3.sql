SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01200SS_3] (@Extender_Form_ID char(15), @UD_Form_Field_Desc char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE Extender_Form_ID = @Extender_Form_ID AND UD_Form_Field_Desc = @UD_Form_Field_Desc ORDER BY Extender_Form_ID ASC, UD_Form_Field_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01200SS_3] TO [DYNGRP]
GO
