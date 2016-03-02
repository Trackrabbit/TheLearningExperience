SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07200SI] (@USERID char(15), @DICTID smallint, @FormID smallint, @ListOption int, @ListDateRestriction int, @ListOption2 int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07200 (USERID, DICTID, FormID, ListOption, ListDateRestriction, ListOption2) VALUES ( @USERID, @DICTID, @FormID, @ListOption, @ListDateRestriction, @ListOption2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07200SI] TO [DYNGRP]
GO
