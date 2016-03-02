SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY00801SS_1] (@RULEID smallint, @CMPANYID smallint, @RSRCID char(31), @RSRCSBID char(21), @USERID char(15)) AS  set nocount on SELECT TOP 1  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE RULEID = @RULEID AND CMPANYID = @CMPANYID AND RSRCID = @RSRCID AND RSRCSBID = @RSRCSBID AND USERID = @USERID ORDER BY RULEID ASC, CMPANYID ASC, RSRCID ASC, RSRCSBID ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00801SS_1] TO [DYNGRP]
GO
