SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDV01SS_3] (@COMPANYCODE_I char(7), @DIVISION_I char(31)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, DEX_ROW_ID FROM .HRPMDV01 WHERE COMPANYCODE_I = @COMPANYCODE_I AND DIVISION_I = @DIVISION_I ORDER BY COMPANYCODE_I ASC, DIVISION_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDV01SS_3] TO [DYNGRP]
GO
