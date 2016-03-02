SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06021SS_1] (@WOTYPE char(11), @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  WOTYPE, SQNCLINE, WOSTAT, STATIONID, TECHID, WAITTME, DEX_ROW_ID FROM .SVC06021 WHERE WOTYPE = @WOTYPE AND SQNCLINE = @SQNCLINE ORDER BY WOTYPE ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06021SS_1] TO [DYNGRP]
GO