SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA00860SS_2] (@TAVersionMajor smallint, @TAVersionMinor smallint, @TABuild smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE TAVersionMajor = @TAVersionMajor AND TAVersionMinor = @TAVersionMinor AND TABuild = @TABuild ORDER BY TAVersionMajor ASC, TAVersionMinor ASC, TABuild ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA00860SS_2] TO [DYNGRP]
GO
