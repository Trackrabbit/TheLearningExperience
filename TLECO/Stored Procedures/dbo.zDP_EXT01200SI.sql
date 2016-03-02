SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01200SI] (@Extender_Record_ID int, @Extender_Form_ID char(15), @UD_Form_Field_ID char(31), @UD_Form_Field_ID_2 char(31), @UD_Form_Field_Desc char(65), @Lookup_Value char(15), @CURNCYID char(15), @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @NOTEINDX numeric(19,5), @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT01200 (Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, Lookup_Value, CURNCYID, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @Extender_Record_ID, @Extender_Form_ID, @UD_Form_Field_ID, @UD_Form_Field_ID_2, @UD_Form_Field_Desc, @Lookup_Value, @CURNCYID, @RATETPID, @EXGTBLID, @XCHGRATE, @EXCHDATE, @TIME1, @NOTEINDX, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01200SI] TO [DYNGRP]
GO
