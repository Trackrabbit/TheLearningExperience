SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04702SS_1] (@SERVICEID char(81)) AS  set nocount on SELECT TOP 1  SERVICEID, DEX_ROW_ID FROM .SY04702 WHERE SERVICEID = @SERVICEID ORDER BY SERVICEID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04702SS_1] TO [DYNGRP]
GO
