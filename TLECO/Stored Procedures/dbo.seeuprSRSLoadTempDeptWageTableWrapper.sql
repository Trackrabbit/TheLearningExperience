SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[seeuprSRSLoadTempDeptWageTableWrapper]   @IN_sDept char(6),   @IN_eDept char(6),   @IN_sChkDt datetime,   @IN_eChkDt datetime,   @IN_sPayCd char(6),   @IN_ePayCd char(6)  as   declare   @IN_sYear smallint,   @IN_eYear smallint  CREATE TABLE [dbo].[#UPRTWHR](  [DEPRTMNT] [char](7) NOT NULL,  [PAYRCORD] [char](7) NOT NULL,  [EMPLOYID] [char](15) NOT NULL,  [PAYTYHRS_1] [numeric](19, 5) NOT NULL,  [PAYTYHRS_2] [numeric](19, 5) NOT NULL,  [PAYTYHRS_3] [numeric](19, 5) NOT NULL,  [PAYTYWGS_1] [numeric](19, 5) NOT NULL,  [PAYTYWGS_2] [numeric](19, 5) NOT NULL,  [PAYTYWGS_3] [numeric](19, 5) NOT NULL,  [DEX_ROW_ID] [int] IDENTITY(1,1) NOT NULL,  ) ON [PRIMARY]  select @IN_sYear = datepart(yyyy, @IN_sChkDt) select @IN_eYear = datepart(yyyy, @IN_eChkDt)  exec uprLoadTempDeptWageTable  @IN_sDept,   @IN_eDept,   @IN_sYear,   @IN_eYear,   @IN_sChkDt,   @IN_eChkDt,   @IN_sPayCd,   @IN_ePayCd,   '#UPRTWHR'   select  #UPRTWHR.*,   UPR40600.DSCRIPTN as PayCodeDesc,  UPR40300.DSCRIPTN as DeptDesc from #UPRTWHR  left join UPR40300 on #UPRTWHR.DEPRTMNT = UPR40300.DEPRTMNT  left join UPR40600 on #UPRTWHR.PAYRCORD = UPR40600.PAYRCORD   
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSLoadTempDeptWageTableWrapper] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSLoadTempDeptWageTableWrapper] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeuprSRSLoadTempDeptWageTableWrapper] TO [rpt_power user]
GO
