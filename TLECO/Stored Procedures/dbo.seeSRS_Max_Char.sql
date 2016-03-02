SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeSRS_Max_Char] @NUMCHARS INT  AS  set nocount ON  DECLARE @maxPad VARCHAR(max) DECLARE @max_results TABLE (C1 VARCHAR(1), C2 INT)  INSERT INTO @max_results  EXECUTE master..smDEX_Max_Char  SELECT @maxPad = C1 FROM @max_results  SET @maxPad = (SELECT REPLICATE(@maxPad,@NUMCHARS))  SELECT @maxPad  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[seeSRS_Max_Char] TO [rpt_warehouse manager]
GO
