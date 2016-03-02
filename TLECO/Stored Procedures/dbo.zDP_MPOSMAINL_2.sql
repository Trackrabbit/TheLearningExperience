SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MPOSMAINL_2] (@COMPANYCODE_I_RS char(7), @DIVISIONCODE_I_RS char(7), @DEPARTMENTCODE_I_RS char(7), @POSITIONCODE_I_RS char(7), @EMPID_I_RS char(15), @COMPANYCODE_I_RE char(7), @DIVISIONCODE_I_RE char(7), @DEPARTMENTCODE_I_RE char(7), @POSITIONCODE_I_RE char(7), @EMPID_I_RE char(15)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, DEPARTMENTCODE_I DESC, POSITIONCODE_I DESC, EMPID_I DESC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, DEPARTMENTCODE_I DESC, POSITIONCODE_I DESC, EMPID_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, Effective_Date, SUPERVISORCODE_I, LOCCODE_I, FTE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .MPOSMAIN WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPARTMENTCODE_I BETWEEN @DEPARTMENTCODE_I_RS AND @DEPARTMENTCODE_I_RE AND POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY COMPANYCODE_I DESC, DIVISIONCODE_I DESC, DEPARTMENTCODE_I DESC, POSITIONCODE_I DESC, EMPID_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MPOSMAINL_2] TO [DYNGRP]
GO