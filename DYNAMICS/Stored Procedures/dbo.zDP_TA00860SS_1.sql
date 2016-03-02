SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA00860SS_1] (@companyID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE companyID = @companyID ORDER BY companyID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA00860SS_1] TO [DYNGRP]
GO
