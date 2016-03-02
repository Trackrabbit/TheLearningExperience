SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01200F_3] (@Extender_Form_ID_RS char(15), @UD_Form_Field_Desc_RS char(65), @Extender_Form_ID_RE char(15), @UD_Form_Field_Desc_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 ORDER BY Extender_Form_ID ASC, UD_Form_Field_Desc ASC, DEX_ROW_ID ASC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE Extender_Form_ID = @Extender_Form_ID_RS AND UD_Form_Field_Desc BETWEEN @UD_Form_Field_Desc_RS AND @UD_Form_Field_Desc_RE ORDER BY Extender_Form_ID ASC, UD_Form_Field_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT01200 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND UD_Form_Field_Desc BETWEEN @UD_Form_Field_Desc_RS AND @UD_Form_Field_Desc_RE ORDER BY Extender_Form_ID ASC, UD_Form_Field_Desc ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01200F_3] TO [DYNGRP]
GO
