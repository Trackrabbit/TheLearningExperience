SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC30301SS_1] (@PLANCODE char(15), @JOBTITLE char(7), @CHANGEDATE_I datetime, @SEQ_I int) AS  set nocount on SELECT TOP 1  PLANCODE, JOBTITLE, CHANGEDATE_I, SEQ_I, CHANGETIME_I, DSCRIPTN, ACTINDX, ATACRSTM, ATACRVAC, BUDGETPERMSEATAMT, BUDGETTEMPSEATAMT, BUGETBENPERCENT, BUDGETTAXPERCENT, BUDGETBENAMOUNT, BUDGETTAXAMOUNT, Calc_Min_Wage_Bal, WCACFPAY, CHANGEBY_I, CONTENDDTE, CONTSTARTDTE, CREATDDT, CRUSRID, DEPRTMNT, DIVISIONCODE_I, EEOCLASS_I, EMPLCLAS, FLSASTATUS, BUDGETEDFTE, INHERITANCELOCK, LOCATNID, NOTEINDX, NOTEINDX2, GROSSPAYINDEX, BENEFITEXPINDEX, WCOMPTAXEXPINDEX, TAXBENEXPENSEINDEX, EMPLYRFICAMEINDEX, EMPLYRFICASEINDEX, EMPLYRFUTAINDEX, EMPLYRSUTAINDEX, POSSTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, STMACMTH, SKTMACAM, SKTMHPYR, SKILLSETNUMBER_I, SUPERVISORCODE_I, EMPLOYMENTTYPE, UNIONDUESAMOUNT_I, UNIONNAME_I, VACCRMTH, VACCRAMT, VACAPRYR, WRNSTFLSBLWZR, WRNVCNFLSBLWZR, WRKRCOMP, CHANGEREASON_I, CONTACTNUM_I, DEX_ROW_ID, TXTFIELD FROM .PC30301 WHERE PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND CHANGEDATE_I = @CHANGEDATE_I AND SEQ_I = @SEQ_I ORDER BY PLANCODE ASC, JOBTITLE ASC, CHANGEDATE_I ASC, SEQ_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC30301SS_1] TO [DYNGRP]
GO
