SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06115SS_1] (@USERID char(15), @WORECTYPE smallint, @MKDTOPST tinyint, @WORKORDNUM char(11)) AS  set nocount on SELECT TOP 1  MKDTOPST, WORECTYPE, WORKORDNUM, USERID, STRTDATE, ENDDATE, WOTYPE, STATIONID, OFFID, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC06115 WHERE USERID = @USERID AND WORECTYPE = @WORECTYPE AND MKDTOPST = @MKDTOPST AND WORKORDNUM = @WORKORDNUM ORDER BY USERID ASC, WORECTYPE ASC, MKDTOPST ASC, WORKORDNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06115SS_1] TO [DYNGRP]
GO
