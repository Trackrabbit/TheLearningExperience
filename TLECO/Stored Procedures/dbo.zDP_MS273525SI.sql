SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273525SI] (@MSO_Fieldname1 char(31), @MSO_Field_Type smallint, @MSO_Field_Width smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273525 (MSO_Fieldname1, MSO_Field_Type, MSO_Field_Width) VALUES ( @MSO_Fieldname1, @MSO_Field_Type, @MSO_Field_Width) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273525SI] TO [DYNGRP]
GO
