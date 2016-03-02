SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDateAsString](@DateToConvert datetime) RETURNS VARCHAR(8) AS  BEGIN  RETURN RIGHT ('0000'+ CAST (DATENAME(yyyy,@DateToConvert) AS varchar), 4) + RIGHT ('00'+ CAST (month(@DateToConvert) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@DateToConvert) AS varchar), 2)   END   
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_warehouse manager]
GO
