SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00100N_8] (@BS int, @SOCSCNUM char(15), @DEX_ROW_ID int, @SOCSCNUM_RS char(15), @SOCSCNUM_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @SOCSCNUM_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, AFSMVET, RECSEPVET, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .UPR00100 WHERE ( SOCSCNUM = @SOCSCNUM AND DEX_ROW_ID > @DEX_ROW_ID OR SOCSCNUM > @SOCSCNUM ) ORDER BY SOCSCNUM ASC, DEX_ROW_ID ASC END ELSE IF @SOCSCNUM_RS = @SOCSCNUM_RE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, AFSMVET, RECSEPVET, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .UPR00100 WHERE SOCSCNUM = @SOCSCNUM_RS AND ( SOCSCNUM = @SOCSCNUM AND DEX_ROW_ID > @DEX_ROW_ID OR SOCSCNUM > @SOCSCNUM ) ORDER BY SOCSCNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, AFSMVET, RECSEPVET, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .UPR00100 WHERE SOCSCNUM BETWEEN @SOCSCNUM_RS AND @SOCSCNUM_RE AND ( SOCSCNUM = @SOCSCNUM AND DEX_ROW_ID > @DEX_ROW_ID OR SOCSCNUM > @SOCSCNUM ) ORDER BY SOCSCNUM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00100N_8] TO [DYNGRP]
GO
