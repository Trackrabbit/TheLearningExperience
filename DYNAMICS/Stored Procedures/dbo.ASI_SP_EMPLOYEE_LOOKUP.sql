SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ASI_SP_EMPLOYEE_LOOKUP]  @temptable varchar(20),  @table varchar(20),  @db varchar(20),  @from1 varchar (254),  @from2 varchar (254),  @from3 varchar (254),  @from4 varchar (254),  @from5 varchar (254),  @from6 varchar (254),  @from7 varchar (254),  @from8 varchar (254),  @from9 varchar (254),  @where1 varchar (254),  @where2 varchar (254),  @where3 varchar (254),  @where4 varchar (254),  @where5 varchar (254),  @where6 varchar (254),  @where7 varchar (254),  @where8 varchar (254),  @where9 varchar (254) AS  exec('delete ' + @temptable +  ' insert ' + @temptable + ' SELECT ' +  @db + 'UPR00100.EMPLOYID,' +  @db + 'UPR00100.EMPLCLAS,' +  @db + 'UPR00100.INACTIVE,' +  @db + 'UPR00100.LASTNAME,' +  @db + 'UPR00100.FRSTNAME,' +  @db + 'UPR00100.MIDLNAME,' +  @db + 'UPR00100.ADRSCODE,' +  @db + 'UPR00100.SOCSCNUM,' +  @db + 'UPR00100.BRTHDATE,' +  @db + 'UPR00100.GENDER,' +  @db + 'UPR00100.ETHNORGN,' +  @db + 'UPR00100.Calc_Min_Wage_Bal,' +  @db + 'UPR00100.DIVISIONCODE_I,' +  @db + 'UPR00100.DEPRTMNT,' +  @db + 'UPR00100.JOBTITLE,' +  @db + 'UPR00100.SUPERVISORCODE_I,' +  @db + 'UPR00100.LOCATNID,' +  @db + 'UPR00100.WCACFPAY,' +  @db + 'UPR00100.ACTINDX,' +  @db + 'UPR00100.WKHRPRYR,' +  @db + 'UPR00100.STRTDATE,' +  @db + 'UPR00100.DEMPINAC,' +  @db + 'UPR00100.RSNEMPIN,' +  @db + 'UPR00100.MINETPAY,' +  @db + 'UPR00100.SUTASTAT,' +  @db + 'UPR00100.WRKRCOMP,' +  @db + 'UPR00100.ATACRVAC,' +  @db + 'UPR00100.VACCRAMT,' +  @db + 'UPR00100.VACCRMTH,' +  @db + 'UPR00100.VACAPRYR,' +  @db + 'UPR00100.VACAVLBL,' +  @db + 'UPR00100.WRNVCNFLSBLWZR,' +  @db + 'UPR00100.ATACRSTM,' +  @db + 'UPR00100.STMACMTH,' +  @db + 'UPR00100.SKTMACAM,' +  @db + 'UPR00100.SIKTIMAV,' +  @db + 'UPR00100.SKTMHPYR,' +  @db + 'UPR00100.WRNSTFLSBLWZR,' +  @db + 'UPR00100.USERDEF1,' +  @db + 'UPR00100.USERDEF2,' +  @db + 'UPR00100.EMPLOYMENTTYPE,' +  @db + 'UPR00100.MARITALSTATUS,' +  @db + 'UPR00100.BENADJDATE,' +  @db + 'UPR00100.LASTDAYWORKED_I,' +  @db + 'UPR00100.BIRTHDAY,' +  @db + 'UPR00100.BIRTHMONTH,' +  @db + 'UPR00100.SPOUSE,' +  @db + 'UPR00100.SPOUSESSN,' +  @db + 'UPR00100.NICKNAME,' +  @db + 'UPR00100.ALTERNATENAME,' +  @db + 'UPR00100.HRSTATUS,' +  @db + 'UPR00100.DATEOFLASTREVIEW_I,' +  @db + 'UPR00100.DATEOFNEXTREVIEW_I,' +  @db + 'UPR00100.BENEFITEXPIRE_I,' +  @db + 'UPR00100.HANDICAPPED,' +  @db + 'UPR00100.VETERAN,' +  @db + 'UPR00100.VIETNAMVETERAN,' +  @db + 'UPR00100.DISABLEDVETERAN,' +  @db + 'UPR00100.UNIONEMPLOYEE,' +  @db + 'UPR00100.SMOKER_I,' +  @db + 'UPR00100.CITIZEN,' +  @db + 'UPR00100.VERIFIED,' +  @db + 'UPR00100.I9RENEW,' +  @db + 'UPR00100.Primary_Pay_Record,' +  @db + 'UPR00100.CHANGEBY_I,' +  @db + 'UPR00100.CHANGEDATE_I,' +  @db + 'UPR00100.NOTEINDX,' +  @db + 'UPR00100.NOTEINDX2,' +  @db + 'UPR00100.UNIONCD,' +  @db + 'UPR00100.RATECLSS,' +  @db + 'UPR00100.FEDCLSSCD,' +  @db + 'UPR00100.OTHERVET' +  @from1 + @from2 + @from3 + @from4 + @from5 + @from6 + @from7 + @from8 + @from9 + @where1 + @where2 + @where3 + @where4 + @where5 + @where6 + @where7 + @where8 + @where9  )    
GO
GRANT EXECUTE ON  [dbo].[ASI_SP_EMPLOYEE_LOOKUP] TO [DYNGRP]
GO