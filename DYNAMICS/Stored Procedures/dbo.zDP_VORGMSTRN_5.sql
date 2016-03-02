SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_VORGMSTRN_5] (@BS int, @DEPARTMENTCODE_I char(7), @COMPANYCODE_I char(7), @Employee_Count_I int, @Vacancy_Count_I int, @DIVISIONCODE_I char(7), @POSITIONCODE_I char(7), @DEX_ROW_ID int, @DEPARTMENTCODE_I_RS char(7), @COMPANYCODE_I_RS char(7), @Employee_Count_I_RS int, @Vacancy_Count_I_RS int, @DIVISIONCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @DEPARTMENTCODE_I_RE char(7), @COMPANYCODE_I_RE char(7), @Employee_Count_I_RE int, @Vacancy_Count_I_RE int, @DIVISIONCODE_I_RE char(7), @POSITIONCODE_I_RE char(7)) AS  set nocount on IF @DEPARTMENTCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE ( DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I > @Vacancy_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I > @Employee_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I > @COMPANYCODE_I OR DEPARTMENTCODE_I > @DEPARTMENTCODE_I ) ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, Employee_Count_I ASC, Vacancy_Count_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @DEPARTMENTCODE_I_RS = @DEPARTMENTCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE DEPARTMENTCODE_I = @DEPARTMENTCODE_I_RS AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND Employee_Count_I BETWEEN @Employee_Count_I_RS AND @Employee_Count_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND ( DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I > @Vacancy_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I > @Employee_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I > @COMPANYCODE_I OR DEPARTMENTCODE_I > @DEPARTMENTCODE_I ) ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, Employee_Count_I ASC, Vacancy_Count_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Employee_Count_I, Vacancy_Count_I, DEX_ROW_ID FROM .VORGMSTR WHERE DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND Employee_Count_I BETWEEN @Employee_Count_I_RS AND @Employee_Count_I_RE AND Vacancy_Count_I BETWEEN @Vacancy_Count_I_RS AND @Vacancy_Count_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND ( DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I = @POSITIONCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I = @DIVISIONCODE_I AND POSITIONCODE_I > @POSITIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I = @Vacancy_Count_I AND DIVISIONCODE_I > @DIVISIONCODE_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I = @Employee_Count_I AND Vacancy_Count_I > @Vacancy_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I = @COMPANYCODE_I AND Employee_Count_I > @Employee_Count_I OR DEPARTMENTCODE_I = @DEPARTMENTCODE_I AND COMPANYCODE_I > @COMPANYCODE_I OR DEPARTMENTCODE_I > @DEPARTMENTCODE_I ) ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, Employee_Count_I ASC, Vacancy_Count_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VORGMSTRN_5] TO [DYNGRP]
GO
