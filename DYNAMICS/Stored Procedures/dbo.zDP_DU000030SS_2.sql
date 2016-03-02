SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SS_2] (@companyID smallint, @PRODID smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE companyID = @companyID AND PRODID = @PRODID ORDER BY companyID ASC, PRODID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SS_2] TO [DYNGRP]
GO
