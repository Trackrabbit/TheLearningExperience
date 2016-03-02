SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06115SS_2] (@USERID char(15), @WORECTYPE smallint, @WORKORDNUM char(11)) AS  set nocount on SELECT TOP 1  MKDTOPST, WORECTYPE, WORKORDNUM, USERID, STRTDATE, ENDDATE, WOTYPE, STATIONID, OFFID, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC06115 WHERE USERID = @USERID AND WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM ORDER BY USERID ASC, WORECTYPE ASC, WORKORDNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06115SS_2] TO [DYNGRP]
GO
