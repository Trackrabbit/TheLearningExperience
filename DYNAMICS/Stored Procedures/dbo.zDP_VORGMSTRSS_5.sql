SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_VORGMSTRSS_5] (@DEPARTMENTCODE_I char(7), @COMPANYCODE_I char(7), @Employee_Count_I int, @Vacancy_Count_I int, @DIVISIONCODE_I char(7), @POSITIONCODE_I char(7)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I = @POSITIONCODE_I ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, Employee_Count_I ASC, Vacancy_Count_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VORGMSTRSS_5] TO [DYNGRP]
GO
