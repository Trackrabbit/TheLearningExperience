SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeCURRENCYSYMBOL]  as   select CRNCYSYM, (DECPLCUR-1) as DECPLCUR from MC40000 a inner join DYNAMICS..MC40200 b   on a.FUNCRIDX = b.CURRNIDX    
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[seeCURRENCYSYMBOL] TO [rpt_warehouse manager]
GO
