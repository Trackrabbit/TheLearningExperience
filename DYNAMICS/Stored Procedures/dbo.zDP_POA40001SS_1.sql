SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_POA40001SS_1] (@CMPANYID smallint) AS  set nocount on SELECT TOP 1  CMPANYID, POA_ActivatePOApprovals, DEX_ROW_ID FROM .POA40001 WHERE CMPANYID = @CMPANYID ORDER BY CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40001SS_1] TO [DYNGRP]
GO
