SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304SS_2] (@CMPANYID smallint, @USERID char(15)) AS  set nocount on SELECT TOP 1  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID = @CMPANYID AND USERID = @USERID ORDER BY CMPANYID ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304SS_2] TO [DYNGRP]
GO