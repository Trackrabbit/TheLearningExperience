SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB20100SI] (@Excel_Report_ID char(15), @LNITMSEQ int, @Drill_Down_Parameter_Num smallint, @Table_Number smallint, @Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB20100 (Excel_Report_ID, LNITMSEQ, Drill_Down_Parameter_Num, Table_Number, Field_Number) VALUES ( @Excel_Report_ID, @LNITMSEQ, @Drill_Down_Parameter_Num, @Table_Number, @Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB20100SI] TO [DYNGRP]
GO
