SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11100SI] (@Excel_Report_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @Field_Number smallint, @Excel_Field_Name char(81), @TBLPHYSNM char(51), @Blank_Field_CB tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11100 (Excel_Report_ID, Table_Number, Additional_Table_Number, Field_Number, Excel_Field_Name, TBLPHYSNM, Blank_Field_CB) VALUES ( @Excel_Report_ID, @Table_Number, @Additional_Table_Number, @Field_Number, @Excel_Field_Name, @TBLPHYSNM, @Blank_Field_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11100SI] TO [DYNGRP]
GO
