SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeUPREmployeeListByPayCode]( @PayCode char(7), @DateFrom datetime, @DateTo datetime)  as SELECT        UPR30300.EMPLOYID, UPR30300.PAYROLCD, SUM(UPR30300.UPRTRXAM) AS AMOUNT, SUM(UPR30300.UNTSTOPY) AS UNITS, UPR00100.LASTNAME, UPR00100.FRSTNAME, Employees.[Employee ID For Drillback]  FROM            UPR00100 INNER JOIN                          UPR30300 ON UPR00100.EMPLOYID = UPR30300.EMPLOYID  inner join Employees on UPR00100.EMPLOYID = Employees.[Employee ID] WHERE        (UPR30300.CHEKDATE >= @DateFrom) AND (UPR30300.CHEKDATE <= @DateTo) AND (@PayCode = '*All' or (UPR30300.PAYROLCD IN (@PayCode))) GROUP BY UPR30300.EMPLOYID, UPR30300.PAYROLCD, UPR00100.LASTNAME, UPR00100.FRSTNAME,Employees.[Employee ID For Drillback]          
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeListByPayCode] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeListByPayCode] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeListByPayCode] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeListByPayCode] TO [rpt_power user]
GO
