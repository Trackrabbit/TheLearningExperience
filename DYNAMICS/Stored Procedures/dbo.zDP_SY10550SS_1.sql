SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10550SS_1] (@USERID char(15), @CMPANYID smallint) AS  set nocount on SELECT TOP 1  USERID, CMPANYID, SECMODALTID, DEX_ROW_ID FROM .SY10550 WHERE USERID = @USERID AND CMPANYID = @CMPANYID ORDER BY USERID ASC, CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10550SS_1] TO [DYNGRP]
GO