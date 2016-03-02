SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SS_3] (@PRODID smallint, @fileNumber smallint, @companyID smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE PRODID = @PRODID AND fileNumber = @fileNumber AND companyID = @companyID ORDER BY PRODID ASC, fileNumber ASC, companyID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SS_3] TO [DYNGRP]
GO
