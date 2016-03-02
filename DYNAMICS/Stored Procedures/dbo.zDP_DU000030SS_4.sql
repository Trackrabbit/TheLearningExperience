SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SS_4] (@PRODID smallint, @companyID smallint, @fileNumber smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE PRODID = @PRODID AND companyID = @companyID AND fileNumber = @fileNumber ORDER BY PRODID ASC, companyID ASC, fileNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SS_4] TO [DYNGRP]
GO
