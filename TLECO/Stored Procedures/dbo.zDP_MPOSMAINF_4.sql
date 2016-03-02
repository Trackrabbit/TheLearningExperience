SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MPOSMAINF_4] (@DEPARTMENTCODE_I_RS char(7), @COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @EMPID_I_RS char(15), @DEPARTMENTCODE_I_RE char(7), @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @POSITIONCODE_I_RE char(7), @EMPID_I_RE char(15)) AS  set nocount on IF @DEPARTMENTCODE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, EMPID_I ASC END ELSE IF @DEPARTMENTCODE_I_RS = @DEPARTMENTCODE_I_RE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN WHERE DEPARTMENTCODE_I = @DEPARTMENTCODE_I_RS AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN WHERE DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY DEPARTMENTCODE_I ASC, COMPANYCODE_I ASC, DIVISIONCODE_I ASC, POSITIONCODE_I ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MPOSMAINF_4] TO [DYNGRP]
GO
