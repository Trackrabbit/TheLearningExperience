SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDP01SS_4] (@COMPANYCODE_I char(7), @DEPARTMENTCODE_I char(7)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE COMPANYCODE_I = @COMPANYCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I ORDER BY COMPANYCODE_I ASC, DEPARTMENTCODE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDP01SS_4] TO [DYNGRP]
GO
