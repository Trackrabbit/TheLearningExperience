SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_VORGMSTRN_2] (@BS int, @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @Vacancy_Count_I int, @DEX_ROW_ID int, @COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @Vacancy_Count_I_RS int, @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @Vacancy_Count_I_RE int) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I = @Vacancy_Count_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I > @Vacancy_Count_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, Vacancy_Count_I ASC, DEX_ROW_ID ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I = @Vacancy_Count_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I > @Vacancy_Count_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, Vacancy_Count_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE AND ( COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I = @Vacancy_Count_I AND DEX_ROW_ID > @DEX_ROW_ID OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND Vacancy_Count_I > @Vacancy_Count_I OR COMPANYCODE_I = @COMPANYCODE_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC, DIVISIONCODE_I ASC, Vacancy_Count_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VORGMSTRN_2] TO [DYNGRP]
GO
