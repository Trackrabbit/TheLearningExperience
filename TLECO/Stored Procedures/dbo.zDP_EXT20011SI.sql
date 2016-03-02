SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20011SI] (@Field_ID int, @LNITMSEQ int, @Restriction_Field_ID int, @Restriction_Value_Type smallint, @Posting_Restriction smallint, @Restrict_From_Field_ID int, @TOTAL numeric(19,5), @DATE1 datetime, @TIME1 datetime, @STRGA255 char(255), @Condition_Date_Option smallint, @Template_Time_Option1 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20011 (Field_ID, LNITMSEQ, Restriction_Field_ID, Restriction_Value_Type, Posting_Restriction, Restrict_From_Field_ID, TOTAL, DATE1, TIME1, STRGA255, Condition_Date_Option, Template_Time_Option1) VALUES ( @Field_ID, @LNITMSEQ, @Restriction_Field_ID, @Restriction_Value_Type, @Posting_Restriction, @Restrict_From_Field_ID, @TOTAL, @DATE1, @TIME1, @STRGA255, @Condition_Date_Option, @Template_Time_Option1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20011SI] TO [DYNGRP]
GO
