SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40301F_4] (@SKILLSETNUMBER_I_RS int, @PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SKILLSETNUMBER_I_RE int, @PLANCODE_RE char(15), @JOBTITLE_RE char(7)) AS  set nocount on IF @SKILLSETNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, DSCRIPTN, ACTINDX, ATACRSTM, ATACRVAC, BUDGETPERMSEATAMT, BUDGETTEMPSEATAMT, BUGETBENPERCENT, BUDGETTAXPERCENT, BUDGETBENAMOUNT, BUDGETTAXAMOUNT, Calc_Min_Wage_Bal, WCACFPAY, CHANGEBY_I, CHANGEDATE_I, CONTENDDTE, CONTSTARTDTE, CREATDDT, CRUSRID, DEPRTMNT, DIVISIONCODE_I, EEOCLASS_I, EMPLCLAS, FLSASTATUS, BUDGETEDFTE, INHERITANCELOCK, LOCATNID, NOTEINDX, NOTEINDX2, GROSSPAYINDEX, BENEFITEXPINDEX, WCOMPTAXEXPINDEX, TAXBENEXPENSEINDEX, EMPLYRFICAMEINDEX, EMPLYRFICASEINDEX, EMPLYRFUTAINDEX, EMPLYRSUTAINDEX, POSSTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, STMACMTH, SKTMACAM, SKTMHPYR, SKILLSETNUMBER_I, SUPERVISORCODE_I, EMPLOYMENTTYPE, UNIONDUESAMOUNT_I, UNIONNAME_I, VACCRMTH, VACCRAMT, VACAPRYR, WRNSTFLSBLWZR, WRNVCNFLSBLWZR, WRKRCOMP, CONTACTNUM_I, DEX_ROW_ID, TXTFIELD FROM .PC40301 ORDER BY SKILLSETNUMBER_I ASC, PLANCODE ASC, JOBTITLE ASC END ELSE IF @SKILLSETNUMBER_I_RS = @SKILLSETNUMBER_I_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, DSCRIPTN, ACTINDX, ATACRSTM, ATACRVAC, BUDGETPERMSEATAMT, BUDGETTEMPSEATAMT, BUGETBENPERCENT, BUDGETTAXPERCENT, BUDGETBENAMOUNT, BUDGETTAXAMOUNT, Calc_Min_Wage_Bal, WCACFPAY, CHANGEBY_I, CHANGEDATE_I, CONTENDDTE, CONTSTARTDTE, CREATDDT, CRUSRID, DEPRTMNT, DIVISIONCODE_I, EEOCLASS_I, EMPLCLAS, FLSASTATUS, BUDGETEDFTE, INHERITANCELOCK, LOCATNID, NOTEINDX, NOTEINDX2, GROSSPAYINDEX, BENEFITEXPINDEX, WCOMPTAXEXPINDEX, TAXBENEXPENSEINDEX, EMPLYRFICAMEINDEX, EMPLYRFICASEINDEX, EMPLYRFUTAINDEX, EMPLYRSUTAINDEX, POSSTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, STMACMTH, SKTMACAM, SKTMHPYR, SKILLSETNUMBER_I, SUPERVISORCODE_I, EMPLOYMENTTYPE, UNIONDUESAMOUNT_I, UNIONNAME_I, VACCRMTH, VACCRAMT, VACAPRYR, WRNSTFLSBLWZR, WRNVCNFLSBLWZR, WRKRCOMP, CONTACTNUM_I, DEX_ROW_ID, TXTFIELD FROM .PC40301 WHERE SKILLSETNUMBER_I = @SKILLSETNUMBER_I_RS AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY SKILLSETNUMBER_I ASC, PLANCODE ASC, JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, DSCRIPTN, ACTINDX, ATACRSTM, ATACRVAC, BUDGETPERMSEATAMT, BUDGETTEMPSEATAMT, BUGETBENPERCENT, BUDGETTAXPERCENT, BUDGETBENAMOUNT, BUDGETTAXAMOUNT, Calc_Min_Wage_Bal, WCACFPAY, CHANGEBY_I, CHANGEDATE_I, CONTENDDTE, CONTSTARTDTE, CREATDDT, CRUSRID, DEPRTMNT, DIVISIONCODE_I, EEOCLASS_I, EMPLCLAS, FLSASTATUS, BUDGETEDFTE, INHERITANCELOCK, LOCATNID, NOTEINDX, NOTEINDX2, GROSSPAYINDEX, BENEFITEXPINDEX, WCOMPTAXEXPINDEX, TAXBENEXPENSEINDEX, EMPLYRFICAMEINDEX, EMPLYRFICASEINDEX, EMPLYRFUTAINDEX, EMPLYRSUTAINDEX, POSSTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, STMACMTH, SKTMACAM, SKTMHPYR, SKILLSETNUMBER_I, SUPERVISORCODE_I, EMPLOYMENTTYPE, UNIONDUESAMOUNT_I, UNIONNAME_I, VACCRMTH, VACCRAMT, VACAPRYR, WRNSTFLSBLWZR, WRNVCNFLSBLWZR, WRKRCOMP, CONTACTNUM_I, DEX_ROW_ID, TXTFIELD FROM .PC40301 WHERE SKILLSETNUMBER_I BETWEEN @SKILLSETNUMBER_I_RS AND @SKILLSETNUMBER_I_RE AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY SKILLSETNUMBER_I ASC, PLANCODE ASC, JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40301F_4] TO [DYNGRP]
GO