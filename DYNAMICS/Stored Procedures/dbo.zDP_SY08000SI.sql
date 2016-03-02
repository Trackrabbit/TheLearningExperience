SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08000SI] (@USERID char(15), @DISPHP tinyint, @REFRSHHP tinyint, @User_Role smallint, @ColumnLayout smallint, @ColumnStackPosition smallint, @Mode smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY08000 (USERID, DISPHP, REFRSHHP, User_Role, ColumnLayout, ColumnStackPosition, Mode) VALUES ( @USERID, @DISPHP, @REFRSHHP, @User_Role, @ColumnLayout, @ColumnStackPosition, @Mode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08000SI] TO [DYNGRP]
GO
