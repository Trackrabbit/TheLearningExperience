SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273525SS_1] (@MSO_Fieldname1 char(31)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Fieldname1, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273525 WHERE MSO_Fieldname1 = @MSO_Fieldname1 ORDER BY MSO_Fieldname1 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273525SS_1] TO [DYNGRP]
GO
