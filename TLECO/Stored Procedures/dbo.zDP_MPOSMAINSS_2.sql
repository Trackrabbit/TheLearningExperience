SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MPOSMAINSS_2] (@COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN WHERE COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND EMPID_I = @EMPID_I ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, DEPARTMENTCODE_I ASC, POSITIONCODE_I ASC, EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MPOSMAINSS_2] TO [DYNGRP]
GO
