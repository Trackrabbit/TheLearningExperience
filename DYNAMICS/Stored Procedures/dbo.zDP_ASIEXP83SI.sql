SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP83SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Favorite_Save_Level smallint, @CMPANYID smallint, @USRCLASS char(15), @USERID char(15), @ASI_Favorite_Name char(81), @ASI_Sequence smallint, @ASI_Field_Number smallint, @ASI_Field_Number_Dict_ID smallint, @ASI_Ascending smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP83 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Favorite_Save_Level, @CMPANYID, @USRCLASS, @USERID, @ASI_Favorite_Name, @ASI_Sequence, @ASI_Field_Number, @ASI_Field_Number_Dict_ID, @ASI_Ascending) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP83SI] TO [DYNGRP]
GO
