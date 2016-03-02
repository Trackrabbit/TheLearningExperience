SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_VORGMSTRL_2] (@COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @Vacancy_Count_I_RS int, @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @Vacancy_Count_I_RE int) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, Vacancy_Count_I DESC, DEX_ROW_ID DESC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, Vacancy_Count_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, Vacancy_Count_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VORGMSTRL_2] TO [DYNGRP]
GO
