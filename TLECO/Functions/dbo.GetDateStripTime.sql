SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDateStripTime]( @Date datetime) RETURNS datetime AS  BEGIN   return CAST(FLOOR( CAST( @Date AS FLOAT ) )AS DATETIME) END   
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_warehouse manager]
GO
