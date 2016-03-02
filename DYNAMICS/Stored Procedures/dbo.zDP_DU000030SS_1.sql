SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SS_1] (@fileNumber smallint, @PRODID smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE fileNumber = @fileNumber AND PRODID = @PRODID ORDER BY fileNumber ASC, PRODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SS_1] TO [DYNGRP]
GO
