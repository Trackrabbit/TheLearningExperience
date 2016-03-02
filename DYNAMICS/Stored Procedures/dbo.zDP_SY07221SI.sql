SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07221SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @ViewAccessType smallint, @IDValue smallint, @USERID char(15), @IsEditable tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07221 (ListDictID, ListID, ViewID, ViewAccessType, IDValue, USERID, IsEditable) VALUES ( @ListDictID, @ListID, @ViewID, @ViewAccessType, @IDValue, @USERID, @IsEditable) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07221SI] TO [DYNGRP]
GO
