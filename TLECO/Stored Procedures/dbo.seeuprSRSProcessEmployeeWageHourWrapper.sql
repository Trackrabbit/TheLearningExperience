SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeuprSRSProcessEmployeeWageHourWrapper]   @IN_sEmployeeId char(15),   @IN_eEmployeeId char(15),   @IN_sChkDt datetime,   @IN_eChkDt datetime as   declare   @IN_sYear smallint,   @IN_eYear smallint,  @IN_sDept varchar(6),  @IN_eDept varchar(6),  @IN_sPayCd varchar(6),  @IN_ePayCd varchar(6)  CREATE TABLE [dbo].[#UPRTWHR](  [DEPRTMNT] [char](7) NOT NULL,  [PAYRCORD] [char](7) NOT NULL,  [EMPLOYID] [char](15) NOT NULL,  [PAYTYHRS_1] [numeric](19, 5) NOT NULL,  [PAYTYHRS_2] [numeric](19, 5) NOT NULL,  [PAYTYHRS_3] [numeric](19, 5) NOT NULL,  [PAYTYWGS_1] [numeric](19, 5) NOT NULL,  [PAYTYWGS_2] [numeric](19, 5) NOT NULL,  [PAYTYWGS_3] [numeric](19, 5) NOT NULL,  [DEX_ROW_ID] [int] IDENTITY(1,1) NOT NULL,  ) ON [PRIMARY]  select @IN_sDept = min(DEPRTMNT) from UPR40300 select @IN_eDept = max(DEPRTMNT) from UPR40300 select @IN_sPayCd = min(PAYRCORD) from UPR40600 select @IN_ePayCd = max(PAYRCORD) from UPR40600  exec uprProcessEmployeeWageHour '#UPRTWHR',  @IN_sEmployeeId,  @IN_eEmployeeId,  @IN_sDept,   @IN_eDept,   @IN_sPayCd,   @IN_ePayCd,   @IN_sChkDt,   @IN_eChkDt,  0 select  #UPRTWHR.*,   UPR40600.DSCRIPTN as PayCodeDesc,  UPR40300.DSCRIPTN as DeptDesc,  rtrim(LASTNAME) + ', ' + rtrim(FRSTNAME) as EmpName from #UPRTWHR  left join UPR40300 on #UPRTWHR.DEPRTMNT = UPR40300.DEPRTMNT  left join UPR40600 on #UPRTWHR.PAYRCORD = UPR40600.PAYRCORD  left join UPR00100 on #UPRTWHR.EMPLOYID = UPR00100.EMPLOYID where #UPRTWHR.EMPLOYID >= @IN_sEmployeeId and #UPRTWHR.EMPLOYID <= @IN_eEmployeeId   
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSProcessEmployeeWageHourWrapper] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSProcessEmployeeWageHourWrapper] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSProcessEmployeeWageHourWrapper] TO [rpt_power user]
GO
