SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPTEExpenseDocument]  (  @action int,  @PTE_Empl_Expense_Doc_No varchar(100),  @bHistory int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedPTE_Empl_Expense_Doc_No varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenPTEExp'   if @action=1  select @ActionType = 'OpenWindow'  else  select @ActionType = 'OpenWindow'  select @EncodedPTE_Empl_Expense_Doc_No = DYNAMICS.dbo.encodeUrlString(rtrim(@PTE_Empl_Expense_Doc_No));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&sPTEExpNo=' + ltrim(@EncodedPTE_Empl_Expense_Doc_No) + '&bHistory=' + ltrim(str(@bHistory))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPTEExpenseDocument] TO [DYNGRP]
GO
