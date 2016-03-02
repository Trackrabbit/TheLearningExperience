SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20011F_1] (@Field_ID_RS int, @LNITMSEQ_RS int, @Field_ID_RE int, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Field_ID_RS IS NULL BEGIN SELECT TOP 25  Field_ID, LNITMSEQ, Restriction_Field_ID, Restriction_Value_Type, Posting_Restriction, Restrict_From_Field_ID, TOTAL, DATE1, TIME1, STRGA255, Condition_Date_Option, Template_Time_Option1, DEX_ROW_ID FROM .EXT20011 ORDER BY Field_ID ASC, LNITMSEQ ASC END ELSE IF @Field_ID_RS = @Field_ID_RE BEGIN SELECT TOP 25  Field_ID, LNITMSEQ, Restriction_Field_ID, Restriction_Value_Type, Posting_Restriction, Restrict_From_Field_ID, TOTAL, DATE1, TIME1, STRGA255, Condition_Date_Option, Template_Time_Option1, DEX_ROW_ID FROM .EXT20011 WHERE Field_ID = @Field_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Field_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Field_ID, LNITMSEQ, Restriction_Field_ID, Restriction_Value_Type, Posting_Restriction, Restrict_From_Field_ID, TOTAL, DATE1, TIME1, STRGA255, Condition_Date_Option, Template_Time_Option1, DEX_ROW_ID FROM .EXT20011 WHERE Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Field_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20011F_1] TO [DYNGRP]
GO
