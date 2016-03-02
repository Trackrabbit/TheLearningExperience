SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMLC01SS_2] (@LOCATION_I char(31), @COMPANYCODE_I char(7)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, LOCCODE_I, LOCATION_I, DEX_ROW_ID FROM .HRPMLC01 WHERE LOCATION_I = @LOCATION_I AND COMPANYCODE_I = @COMPANYCODE_I ORDER BY LOCATION_I ASC, COMPANYCODE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMLC01SS_2] TO [DYNGRP]
GO
