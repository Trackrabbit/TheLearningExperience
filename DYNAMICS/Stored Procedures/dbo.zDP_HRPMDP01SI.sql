SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRPMDP01SI] (@COMPANYCODE_I char(7), @DEPARTMENTCODE_I char(7), @DEPARTMENTNAME_I char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRPMDP01 (COMPANYCODE_I, DEPARTMENTCODE_I, DEPARTMENTNAME_I) VALUES ( @COMPANYCODE_I, @DEPARTMENTCODE_I, @DEPARTMENTNAME_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPMDP01SI] TO [DYNGRP]
GO
