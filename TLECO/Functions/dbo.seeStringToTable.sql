SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[seeStringToTable] (  @String VARCHAR(max),   @Delimeter char(1),     @TrimSpace bit )       RETURNS @Table TABLE ( [Val] VARCHAR(4000) ) AS BEGIN  DECLARE @Val    VARCHAR(4000)  WHILE LEN(@String) > 0  BEGIN  SET @Val    = LEFT(@String,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @String) - 1, -1),  LEN(@String)))  SET @String = SUBSTRING(@String,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @String), 0),  LEN(@String)) + 1, LEN(@String))  IF @TrimSpace = 1 Set @Val = LTRIM(RTRIM(@Val))  INSERT INTO @Table ( [Val] )  VALUES ( @Val )  END  RETURN END   
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_payroll]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_power user]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_production planner]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_project manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_shop supervisor]
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_warehouse manager]
GO
