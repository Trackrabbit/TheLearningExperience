SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20011SS_1] (@Field_ID int, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Field_ID, LNITMSEQ, Restriction_Field_ID, Restriction_Value_Type, Posting_Restriction, Restrict_From_Field_ID, TOTAL, DATE1, TIME1, STRGA255, Condition_Date_Option, Template_Time_Option1, DEX_ROW_ID FROM .EXT20011 WHERE Field_ID = @Field_ID AND LNITMSEQ = @LNITMSEQ ORDER BY Field_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20011SS_1] TO [DYNGRP]
GO
