SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01212SS_1] (@Extender_Record_ID int, @Window_Number smallint, @LNITMSEQ int, @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Record_ID, Window_Number, LNITMSEQ, Field_ID, DATE1, DEX_ROW_ID FROM .EXT01212 WHERE Extender_Record_ID = @Extender_Record_ID AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ AND Field_ID = @Field_ID ORDER BY Extender_Record_ID ASC, Window_Number ASC, LNITMSEQ ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01212SS_1] TO [DYNGRP]
GO
