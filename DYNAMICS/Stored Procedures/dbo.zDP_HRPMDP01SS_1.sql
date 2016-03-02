SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDP01SS_1] (@DEPARTMENTCODE_I char(7), @COMPANYCODE_I char(7)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I, DEX_ROW_ID FROM .HRPMDP01 WHERE DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDP01SS_1] TO [DYNGRP]
GO
