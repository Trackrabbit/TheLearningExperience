SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0100L_10] (@DIVISIONCODE_I_RS char(7), @DEPRTMNT_RS char(7), @JOBTITLE_RS char(7), @EMPLOYID_RS char(15), @DIVISIONCODE_I_RE char(7), @DEPRTMNT_RE char(7), @JOBTITLE_RE char(7), @EMPLOYID_RE char(15)) AS  set nocount on IF @DIVISIONCODE_I_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 ORDER BY DIVISIONCODE_I DESC, DEPRTMNT DESC, JOBTITLE DESC, EMPLOYID DESC END ELSE IF @DIVISIONCODE_I_RS = @DIVISIONCODE_I_RE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 WHERE DIVISIONCODE_I = @DIVISIONCODE_I_RS AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY DIVISIONCODE_I DESC, DEPRTMNT DESC, JOBTITLE DESC, EMPLOYID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 WHERE DIVISIONCODE_I BETWEEN @DIVISIONCODE_I_RS AND @DIVISIONCODE_I_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY DIVISIONCODE_I DESC, DEPRTMNT DESC, JOBTITLE DESC, EMPLOYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0100L_10] TO [DYNGRP]
GO
