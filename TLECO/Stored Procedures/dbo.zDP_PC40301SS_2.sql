SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40301SS_2] (@PLANCODE char(15), @DSCRIPTN char(31), @JOBTITLE char(7)) AS  set nocount on SELECT TOP 1  PLANCODE, JOBTITLE, DSCRIPTN, ACTINDX, ATACRSTM, ATACRVAC, BUDGETPERMSEATAMT, BUDGETTEMPSEATAMT, BUGETBENPERCENT, BUDGETTAXPERCENT, BUDGETBENAMOUNT, BUDGETTAXAMOUNT, Calc_Min_Wage_Bal, WCACFPAY, CHANGEBY_I, CHANGEDATE_I, CONTENDDTE, CONTSTARTDTE, CREATDDT, CRUSRID, DEPRTMNT, DIVISIONCODE_I, EEOCLASS_I, EMPLCLAS, FLSASTATUS, BUDGETEDFTE, INHERITANCELOCK, LOCATNID, NOTEINDX, NOTEINDX2, GROSSPAYINDEX, BENEFITEXPINDEX, WCOMPTAXEXPINDEX, TAXBENEXPENSEINDEX, EMPLYRFICAMEINDEX, EMPLYRFICASEINDEX, EMPLYRFUTAINDEX, EMPLYRSUTAINDEX, POSSTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, STMACMTH, SKTMACAM, SKTMHPYR, SKILLSETNUMBER_I, SUPERVISORCODE_I, EMPLOYMENTTYPE, UNIONDUESAMOUNT_I, UNIONNAME_I, VACCRMTH, VACCRAMT, VACAPRYR, WRNSTFLSBLWZR, WRNVCNFLSBLWZR, WRKRCOMP, CONTACTNUM_I, DEX_ROW_ID, TXTFIELD FROM .PC40301 WHERE PLANCODE = @PLANCODE AND DSCRIPTN = @DSCRIPTN AND JOBTITLE = @JOBTITLE ORDER BY PLANCODE ASC, DSCRIPTN ASC, JOBTITLE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40301SS_2] TO [DYNGRP]
GO