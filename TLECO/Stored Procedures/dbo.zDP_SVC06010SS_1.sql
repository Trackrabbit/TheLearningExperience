SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06010SS_1] (@ROUTEID char(11)) AS  set nocount on SELECT TOP 1  ROUTEID, DSCRIPTN, DEX_ROW_ID FROM .SVC06010 WHERE ROUTEID = @ROUTEID ORDER BY ROUTEID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06010SS_1] TO [DYNGRP]
GO