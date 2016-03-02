SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41200SS_5] (@JOBTITLE char(7)) AS  set nocount on SELECT TOP 1  EMPLCLAS, DSCRIPTN, DEPRTMNT, JOBTITLE, SUTASTAT, WRKRCOMP, MINETPAY, WKHRPRYR, WCACFPAY, ACTINDX, USERDEF1, USERDEF2, ATACRVAC, VACCRMTH, VACCRAMT, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SKTMHPYR, SIKTIMAV, WRNSTFLSBLWZR, DEFLTCLS, Calc_Min_Wage_Bal, EMPLOYMENTTYPE, NOTEINDX, ASSIGNMENTCODE, Time_on_Behalf_Code, DEX_ROW_ID FROM .UPR41200 WHERE JOBTITLE = @JOBTITLE ORDER BY JOBTITLE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41200SS_5] TO [DYNGRP]
GO
