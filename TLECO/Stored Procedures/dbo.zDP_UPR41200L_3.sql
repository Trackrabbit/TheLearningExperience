SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41200L_3] (@DEFLTCLS_RS tinyint, @EMPLCLAS_RS char(15), @DEFLTCLS_RE tinyint, @EMPLCLAS_RE char(15)) AS  set nocount on IF @DEFLTCLS_RS IS NULL BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 ORDER BY DEFLTCLS DESC, EMPLCLAS DESC END ELSE IF @DEFLTCLS_RS = @DEFLTCLS_RE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE DEFLTCLS = @DEFLTCLS_RS AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE ORDER BY DEFLTCLS DESC, EMPLCLAS DESC END ELSE BEGIN SELECT TOP 25  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE DEFLTCLS BETWEEN @DEFLTCLS_RS AND @DEFLTCLS_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE ORDER BY DEFLTCLS DESC, EMPLCLAS DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41200L_3] TO [DYNGRP]
GO