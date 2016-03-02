SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304SI] (@CMPANYID smallint, @BACHNUMB char(15), @UPRBCHOR smallint, @USERID char(15), @UPRBCHST smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10304 (CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST) VALUES ( @CMPANYID, @BACHNUMB, @UPRBCHOR, @USERID, @UPRBCHST) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304SI] TO [DYNGRP]
GO