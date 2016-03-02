SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20321SS_1] (@Extender_Template_ID int, @Window_Number smallint, @LNITMSEQ int, @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Template_ID, Window_Number, LNITMSEQ, Field_ID, STRGA255, TOTAL, Template_Date_Option, Template_Number_Option, Template_Time_Option, Replacement_Rule, Random_CB, Template_Field_Type, DEX_ROW_ID FROM .EXT20321 WHERE Extender_Template_ID = @Extender_Template_ID AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ AND Field_ID = @Field_ID ORDER BY Extender_Template_ID ASC, Window_Number ASC, LNITMSEQ ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20321SS_1] TO [DYNGRP]
GO
