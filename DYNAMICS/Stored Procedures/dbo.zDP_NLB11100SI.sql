SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11100SI] (@Navigation_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @Field_Number smallint, @Navigation_Field_Name char(81), @TBLPHYSNM char(51), @Blank_Field_CB tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB11100 (Navigation_ID, Table_Number, Additional_Table_Number, Field_Number, Navigation_Field_Name, TBLPHYSNM, Blank_Field_CB) VALUES ( @Navigation_ID, @Table_Number, @Additional_Table_Number, @Field_Number, @Navigation_Field_Name, @TBLPHYSNM, @Blank_Field_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11100SI] TO [DYNGRP]
GO
