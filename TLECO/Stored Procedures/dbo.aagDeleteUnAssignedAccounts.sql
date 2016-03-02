SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagDeleteUnAssignedAccounts] (  @aaBudgetID INTEGER ) AS BEGIN  DECLARE @temp_AccountIndex TABLE (ACTINDX INTEGER)  insert into @temp_AccountIndex  SELECT Distinct ACTINDX FROM AAG00905 WHERE aaBudgetID = @aaBudgetID GROUP BY   ACTINDX HAVING SUM(ABS(Balance)) = 0  DELETE FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND ACTINDX IN (   SELECT ACTINDX from @temp_AccountIndex )   RETURN  END     
GO
GRANT EXECUTE ON  [dbo].[aagDeleteUnAssignedAccounts] TO [DYNGRP]
GO
