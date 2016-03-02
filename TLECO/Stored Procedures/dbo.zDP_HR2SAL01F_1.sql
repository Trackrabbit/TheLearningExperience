SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2SAL01F_1] (@EMPID_I_RS char(15), @EFFECTIVEDATE_I_RS datetime, @EMPID_I_RE char(15), @EFFECTIVEDATE_I_RE datetime) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, WAGE_I, COMPENSATIONPERIOD_I, CHANGEREASON_I, SHFTPREM, ANNUALSALARY_I, PTHOURS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2SAL01 ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, WAGE_I, COMPENSATIONPERIOD_I, CHANGEREASON_I, SHFTPREM, ANNUALSALARY_I, PTHOURS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2SAL01 WHERE EMPID_I = @EMPID_I_RS AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, EFFECTIVEDATE_I, WAGE_I, COMPENSATIONPERIOD_I, CHANGEREASON_I, SHFTPREM, ANNUALSALARY_I, PTHOURS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2SAL01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS ORDER BY EMPID_I ASC, EFFECTIVEDATE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SAL01F_1] TO [DYNGRP]
GO
