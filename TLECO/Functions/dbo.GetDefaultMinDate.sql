SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDefaultMinDate]() RETURNS datetime AS  BEGIN  DECLARE   @max_date datetime  select @max_date = GETDATE()  select @max_date = DATEADD(mm,1-DATEPART(mm,@max_date),@max_date)  select @max_date = DATEADD(dd,1-DATEPART(dd,@max_date),@max_date)  select @max_date = DATEADD(yy,1900-DATEPART(yy,@max_date),@max_date)  select @max_date = CAST(FLOOR( CAST( @max_date AS FLOAT ) )AS DATETIME)   RETURN @max_date END   
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_warehouse manager]
GO
