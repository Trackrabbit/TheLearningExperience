SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[PrimaryPay] AS select ['A'].[EMPLOYID] as 'Employee ID', rtrim(['A'].[LASTNAME]) + ', ' + rtrim(['A'].[FRSTNAME]) as 'Employee Name', ['A'].[Primary_Pay_Record] as 'Primary Pay Code', ['B'].[PAYRCORD] as 'Pay Code', ['B'].[PAYRTAMT] as 'Pay Rate Amount'           from [UPR00100] ['A'] WITH (NOLOCK) join [UPR00400] ['B']  WITH (NOLOCK) on ['A'].[EMPLOYID] = ['B'].[EMPLOYID] 
GO
GRANT SELECT ON  [dbo].[PrimaryPay] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PrimaryPay] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PrimaryPay] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PrimaryPay] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PrimaryPay] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PrimaryPay] TO [rpt_human resource administrator]
GO
