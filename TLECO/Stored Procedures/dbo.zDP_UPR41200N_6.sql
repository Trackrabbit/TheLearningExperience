SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41200N_6] (@BS int, @WRKRCOMP char(7), @DEX_ROW_ID int, @WRKRCOMP_RS char(7), @WRKRCOMP_RE char(7)) AS  set nocount on IF @WRKRCOMP_RS IS NULL BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE ( WRKRCOMP = @WRKRCOMP AND DEX_ROW_ID > @DEX_ROW_ID OR WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC, DEX_ROW_ID ASC END ELSE IF @WRKRCOMP_RS = @WRKRCOMP_RE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE WRKRCOMP = @WRKRCOMP_RS AND ( WRKRCOMP = @WRKRCOMP AND DEX_ROW_ID > @DEX_ROW_ID OR WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE WRKRCOMP BETWEEN @WRKRCOMP_RS AND @WRKRCOMP_RE AND ( WRKRCOMP = @WRKRCOMP AND DEX_ROW_ID > @DEX_ROW_ID OR WRKRCOMP > @WRKRCOMP ) ORDER BY WRKRCOMP ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41200N_6] TO [DYNGRP]
GO
