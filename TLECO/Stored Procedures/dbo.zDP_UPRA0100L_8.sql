SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0100L_8] (@SOCSCNUM_RS char(15), @SOCSCNUM_RE char(15)) AS  set nocount on IF @SOCSCNUM_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 ORDER BY SOCSCNUM DESC, DEX_ROW_ID DESC END ELSE IF @SOCSCNUM_RS = @SOCSCNUM_RE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 WHERE SOCSCNUM = @SOCSCNUM_RS ORDER BY SOCSCNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, EMPLCLAS, INACTIVE, LASTNAME, FRSTNAME, MIDLNAME, ADRSCODE, SOCSCNUM, BRTHDATE, GENDER, ETHNORGN, Calc_Min_Wage_Bal, DIVISIONCODE_I, DEPRTMNT, JOBTITLE, SUPERVISORCODE_I, LOCATNID, WCACFPAY, ACTINDX, WKHRPRYR, STRTDATE, DEMPINAC, RSNEMPIN, MINETPAY, SUTASTAT, WRKRCOMP, ATACRVAC, VACCRAMT, VACCRMTH, VACAPRYR, VACAVLBL, WRNVCNFLSBLWZR, ATACRSTM, STMACMTH, SKTMACAM, SIKTIMAV, SKTMHPYR, WRNSTFLSBLWZR, USERDEF1, USERDEF2, EMPLOYMENTTYPE, MARITALSTATUS, BENADJDATE, LASTDAYWORKED_I, BIRTHDAY, BIRTHMONTH, SPOUSE, SPOUSESSN, NICKNAME, ALTERNATENAME, HRSTATUS, DATEOFLASTREVIEW_I, DATEOFNEXTREVIEW_I, BENEFITEXPIRE_I, HANDICAPPED, VETERAN, VIETNAMVETERAN, DISABLEDVETERAN, UNIONEMPLOYEE, SMOKER_I, CITIZEN, VERIFIED, I9RENEW, Primary_Pay_Record, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, UNIONCD, RATECLSS, FEDCLSSCD, OTHERVET, Military_Discharge_Date, EMPLSUFF, STATUSCD, AFSMVET, RECSEPVET, DEX_ROW_ID FROM .UPRA0100 WHERE SOCSCNUM BETWEEN @SOCSCNUM_RS AND @SOCSCNUM_RE ORDER BY SOCSCNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0100L_8] TO [DYNGRP]
GO
