SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11100SI] (@SmartList_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @Field_Number smallint, @SmartList_Field_Name char(81), @TBLPHYSNM char(51), @Blank_Field_CB tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB11100 (SmartList_ID, Table_Number, Additional_Table_Number, Field_Number, SmartList_Field_Name, TBLPHYSNM, Blank_Field_CB) VALUES ( @SmartList_ID, @Table_Number, @Additional_Table_Number, @Field_Number, @SmartList_Field_Name, @TBLPHYSNM, @Blank_Field_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11100SI] TO [DYNGRP]
GO
