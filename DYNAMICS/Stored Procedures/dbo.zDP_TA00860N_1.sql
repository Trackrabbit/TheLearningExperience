SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA00860N_1] (@BS int, @companyID smallint, @companyID_RS smallint, @companyID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @companyID_RS IS NULL BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE ( companyID > @companyID ) ORDER BY companyID ASC END ELSE IF @companyID_RS = @companyID_RE BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE companyID = @companyID_RS AND ( companyID > @companyID ) ORDER BY companyID ASC END ELSE BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE companyID BETWEEN @companyID_RS AND @companyID_RE AND ( companyID > @companyID ) ORDER BY companyID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA00860N_1] TO [DYNGRP]
GO
