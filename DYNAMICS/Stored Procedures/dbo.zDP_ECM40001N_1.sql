SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM40001N_1] (@BS int, @CompanyID int, @CompanyID_RS int, @CompanyID_RE int) AS  set nocount on IF @CompanyID_RS IS NULL BEGIN SELECT TOP 25  CompanyID, CommitmentActivated, DEX_ROW_ID FROM .ECM40001 WHERE ( CompanyID > @CompanyID ) ORDER BY CompanyID ASC END ELSE IF @CompanyID_RS = @CompanyID_RE BEGIN SELECT TOP 25  CompanyID, CommitmentActivated, DEX_ROW_ID FROM .ECM40001 WHERE CompanyID = @CompanyID_RS AND ( CompanyID > @CompanyID ) ORDER BY CompanyID ASC END ELSE BEGIN SELECT TOP 25  CompanyID, CommitmentActivated, DEX_ROW_ID FROM .ECM40001 WHERE CompanyID BETWEEN @CompanyID_RS AND @CompanyID_RE AND ( CompanyID > @CompanyID ) ORDER BY CompanyID ASC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM40001N_1] TO [DYNGRP]
GO
