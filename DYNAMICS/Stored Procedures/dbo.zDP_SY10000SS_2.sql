SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10000SS_2] (@DICTID smallint, @SECURITYID int, @SECRESTYPE smallint, @USERID char(15), @CMPANYID smallint) AS  set nocount on SELECT TOP 1  USERID, CMPANYID, DICTID, SECURITYID, SECRESTYPE, ALTDICID, Modified, DEX_ROW_ID FROM .SY10000 WHERE DICTID = @DICTID AND SECURITYID = @SECURITYID AND SECRESTYPE = @SECRESTYPE AND USERID = @USERID AND CMPANYID = @CMPANYID ORDER BY DICTID ASC, SECURITYID ASC, SECRESTYPE ASC, USERID ASC, CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10000SS_2] TO [DYNGRP]
GO