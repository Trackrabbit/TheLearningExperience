SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11800SI] (@Excel_Report_ID char(15), @Pivot_Table_Field_Type smallint, @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @Pivot_Table_Summary smallint, @Pivot_Table_Field_Name char(255), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11800 (Excel_Report_ID, Pivot_Table_Field_Type, LNITMSEQ, Table_Number, Field_Number, Pivot_Table_Summary, Pivot_Table_Field_Name) VALUES ( @Excel_Report_ID, @Pivot_Table_Field_Type, @LNITMSEQ, @Table_Number, @Field_Number, @Pivot_Table_Summary, @Pivot_Table_Field_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11800SI] TO [DYNGRP]
GO
