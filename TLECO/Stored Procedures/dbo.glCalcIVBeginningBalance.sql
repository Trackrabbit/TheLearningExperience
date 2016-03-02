SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCalcIVBeginningBalance]  @iStartDate varchar(25),  @oBeginBal money OUTPUT  AS  DECLARE  @lSQLError int  SELECT  @oBeginBal = SUM(EXTDCOST) FROM  SEE30303 WHERE  GLPOSTDT < @iStartDate  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glCalcIVBeginningBalance] TO [DYNGRP]
GO
