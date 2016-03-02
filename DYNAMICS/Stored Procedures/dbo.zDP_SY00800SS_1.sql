SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY00800SS_1] (@USERID char(15), @CMPNYNAM char(65), @BACHNUMB char(15), @BCHSOURC char(15), @WINTYPE smallint) AS  set nocount on SELECT TOP 1  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .SY00800 WHERE USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND WINTYPE = @WINTYPE ORDER BY USERID ASC, CMPNYNAM ASC, BACHNUMB ASC, BCHSOURC ASC, WINTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00800SS_1] TO [DYNGRP]
GO
