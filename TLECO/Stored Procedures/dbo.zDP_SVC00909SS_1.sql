SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00909SS_1] (@SVCAREA char(11)) AS  set nocount on SELECT TOP 1  SVCAREA, NAME, DEX_ROW_ID FROM .SVC00909 WHERE SVCAREA = @SVCAREA ORDER BY SVCAREA ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00909SS_1] TO [DYNGRP]
GO