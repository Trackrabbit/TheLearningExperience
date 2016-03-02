SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000020SS_1] (@companyID smallint, @PRODID smallint) AS  set nocount on SELECT TOP 1  companyID, PRODID, versionMajor, versionMinor, versionBuild, DEX_ROW_ID FROM .DU000020 WHERE companyID = @companyID AND PRODID = @PRODID ORDER BY companyID ASC, PRODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000020SS_1] TO [DYNGRP]
GO
