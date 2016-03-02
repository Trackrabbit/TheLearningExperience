SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppBudgetTrxSummary]  (  @action int,  @AccountIndex int,  @BudgetID varchar(15)   )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedBudgetID varchar(255),  @URIstring varchar(255)   select @FunctionName = 'OpenBudTrxSum'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedBudgetID = DYNAMICS.dbo.encodeUrlString(rtrim(@BudgetID))   select @URIstring = '&Act=' + @ActionType + '&Func=' + @FunctionName +   '&ACTINDX=' + ltrim(str(@AccountIndex)) +   '&BudgetID=' + ltrim(@EncodedBudgetID)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppBudgetTrxSummary] TO [DYNGRP]
GO
