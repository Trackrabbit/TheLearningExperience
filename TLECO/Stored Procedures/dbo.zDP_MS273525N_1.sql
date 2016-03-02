SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273525N_1] (@BS int, @MSO_Fieldname1 char(31), @MSO_Fieldname1_RS char(31), @MSO_Fieldname1_RE char(31)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Fieldname1_RS IS NULL BEGIN SELECT TOP 25  MSO_Fieldname1, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273525 WHERE ( MSO_Fieldname1 > @MSO_Fieldname1 ) ORDER BY MSO_Fieldname1 ASC END ELSE IF @MSO_Fieldname1_RS = @MSO_Fieldname1_RE BEGIN SELECT TOP 25  MSO_Fieldname1, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273525 WHERE MSO_Fieldname1 = @MSO_Fieldname1_RS AND ( MSO_Fieldname1 > @MSO_Fieldname1 ) ORDER BY MSO_Fieldname1 ASC END ELSE BEGIN SELECT TOP 25  MSO_Fieldname1, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273525 WHERE MSO_Fieldname1 BETWEEN @MSO_Fieldname1_RS AND @MSO_Fieldname1_RE AND ( MSO_Fieldname1 > @MSO_Fieldname1 ) ORDER BY MSO_Fieldname1 ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273525N_1] TO [DYNGRP]
GO
