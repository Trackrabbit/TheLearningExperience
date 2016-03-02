SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41200UN_4] (@BS int, @DEPRTMNT char(7), @DEPRTMNT_RS char(7), @DEPRTMNT_RE char(7)) AS  set nocount on IF @DEPRTMNT_RS IS NULL BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE ( DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, DEX_ROW_ID ASC END ELSE IF @DEPRTMNT_RS = @DEPRTMNT_RE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE DEPRTMNT = @DEPRTMNT_RS AND ( DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND ( DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41200UN_4] TO [DYNGRP]
GO
