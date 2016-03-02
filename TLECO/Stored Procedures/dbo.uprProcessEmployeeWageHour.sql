SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessEmployeeWageHour]   @IN_WageHourTemp   varchar(255) = NULL,   @sEmployeeID varchar(15),  @eEmployeeID varchar(15),  @sDepartment varchar(6),  @eDepartment varchar(6),  @sPayCode varchar(6),  @ePayCode varchar(6),  @sCheckDate datetime,  @eCheckDate datetime,  @O_iErrorState     int output  AS declare  @sDateString as char(8),  @eDateString as char(8)  set @sDateString = CONVERT(varchar(8), @sCheckDate, 112) set @eDateString = CONVERT(varchar(8), @eCheckDate, 112) EXEC ( ' insert into ' + @IN_WageHourTemp + '  select UPR30300.DEPRTMNT, UPR30300.PAYROLCD, UPR30300.EMPLOYID, sum(UPR30300.UNTSTOPY), 0.00, 0.00,sum(UPR30300.UPRTRXAM), 0.00, 0.00 ' + '    FROM UPR30300  join UPR00100 on UPR30300.EMPLOYID = UPR00100.EMPLOYID join UPR40600 ' + '    on UPR30300.PAYROLCD = UPR40600.PAYRCORD ' + '     WHERE UPR00100.DEPRTMNT between ''' + @sDepartment + ''' AND ''' + @eDepartment + ''''  + '    AND UPR30300.PAYROLCD BETWEEN '''+ @sPayCode + ''' AND ''' + @ePayCode + '''' + '    AND UPR30300.CHEKDATE BETWEEN ''' + @sDateString + ''' AND ''' + @eDateString + '''' + '        AND UPR30300.PAYADVNC = 0.00 ' + '     AND UPR30300.PYRLRTYP = 1 '  + '     AND UPR40600.PAYTYPE <> 13 ' + '     GROUP BY  UPR30300.PAYROLCD, UPR30300.DEPRTMNT, UPR30300.EMPLOYID ')  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessEmployeeWageHour] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[uprProcessEmployeeWageHour] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[uprProcessEmployeeWageHour] TO [rpt_power user]
GO
