SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40500SS_1] (@USERID char(15), @SERIES smallint, @TRXSOURC char(25)) AS  set nocount on SELECT TOP 1  USERID, SERIES, TRXSOURC, VIEWTYPE, DEX_ROW_ID FROM .MC40500 WHERE USERID = @USERID AND SERIES = @SERIES AND TRXSOURC = @TRXSOURC ORDER BY USERID ASC, SERIES ASC, TRXSOURC ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40500SS_1] TO [DYNGRP]
GO