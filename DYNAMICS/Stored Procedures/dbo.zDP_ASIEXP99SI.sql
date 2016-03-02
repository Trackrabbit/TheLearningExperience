SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP99SI] (@CMPANYID smallint, @USERID char(15), @FORMNAME char(79), @Default_View smallint, @ASI_Favorite_Type smallint, @ASI_Additional_Sort smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP99 (CMPANYID, USERID, FORMNAME, Default_View, ASI_Favorite_Type, ASI_Additional_Sort) VALUES ( @CMPANYID, @USERID, @FORMNAME, @Default_View, @ASI_Favorite_Type, @ASI_Additional_Sort) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP99SI] TO [DYNGRP]
GO
