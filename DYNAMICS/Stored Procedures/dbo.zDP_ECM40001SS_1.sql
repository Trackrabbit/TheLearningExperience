SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM40001SS_1] (@CompanyID int) AS  set nocount on SELECT TOP 1  CompanyID, CommitmentActivated, DEX_ROW_ID FROM .ECM40001 WHERE CompanyID = @CompanyID ORDER BY CompanyID ASC set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM40001SS_1] TO [DYNGRP]
GO
