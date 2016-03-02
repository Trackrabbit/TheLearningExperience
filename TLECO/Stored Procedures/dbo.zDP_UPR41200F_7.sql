SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41200F_7] (@EMPLCLAS_RS char(15), @DSCRIPTN_RS char(31), @EMPLCLAS_RE char(15), @DSCRIPTN_RE char(31)) AS  set nocount on IF @EMPLCLAS_RS IS NULL BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 ORDER BY EMPLCLAS ASC, DSCRIPTN ASC END ELSE IF @EMPLCLAS_RS = @EMPLCLAS_RE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE EMPLCLAS = @EMPLCLAS_RS AND DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY EMPLCLAS ASC, DSCRIPTN ASC END ELSE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY EMPLCLAS ASC, DSCRIPTN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41200F_7] TO [DYNGRP]
GO
