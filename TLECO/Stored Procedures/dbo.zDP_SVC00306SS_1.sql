SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00306SS_1] (@EQUIPID int, @ECO_Number char(15)) AS  set nocount on SELECT TOP 1  EQUIPID, ECO_Number, DATE1, SRVRECTYPE, CALLNBR, DEX_ROW_ID FROM .SVC00306 WHERE EQUIPID = @EQUIPID AND ECO_Number = @ECO_Number ORDER BY EQUIPID ASC, ECO_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00306SS_1] TO [DYNGRP]
GO