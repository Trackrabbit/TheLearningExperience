SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE   FUNCTION [dbo].[aagCheckBudgetPreviousYear] ( @aaBudget CHAR(15) , @YEAR1 INT  )RETURNS CHAR(15) AS BEGIN DECLARE @aaBudgetTree CHAR(15)  SELECT @aaBudgetTree = B.aaBudgetTree  FROM AAG00903 A INNER JOIN AAG00900 B ON  A.aaBudgetTreeID = B.aaBudgetTreeID WHERE aaBudget = @aaBudget and  A.YEAR1 = (@YEAR1 - 1) AND  Based_On = 1  RETURN ISNULL(@aaBudgetTree,'') END     
GO
GRANT EXECUTE ON  [dbo].[aagCheckBudgetPreviousYear] TO [DYNGRP]
GO
