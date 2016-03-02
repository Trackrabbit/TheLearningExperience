SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01200N_1] (@BS int, @Extender_Record_ID int, @Extender_Record_ID_RS int, @Extender_Record_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Record_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE ( Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC END ELSE IF @Extender_Record_ID_RS = @Extender_Record_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE Extender_Record_ID = @Extender_Record_ID_RS AND ( Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE AND ( Extender_Record_ID > @Extender_Record_ID ) ORDER BY Extender_Record_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01200N_1] TO [DYNGRP]
GO
