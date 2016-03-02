SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  FUNCTION [dbo].[aagValidateSourceBudgetTree] ( @aaCarriedBudget CHAR(15), @aaCarriedYear  INT, @aaSourceBudget CHAR (15) ) RETURNS  INTEGER AS BEGIN DECLARE @aaBudgetTreeID INT DECLARE @nCount INT SELECT  @aaBudgetTreeID = aaBudgetTreeID FROM AAG00903 WHERE aaBudget = @aaCarriedBudget AND AAG00903.YEAR1 <> @aaCarriedYear IF @aaBudgetTreeID IS NULL BEGIN RETURN 1  END ELSE BEGIN SELECT @nCount = count(*) FROM AAG00903 WHERE aaBudget = @aaSourceBudget AND aaBudgetTreeID = @aaBudgetTreeID IF @nCount > 0 BEGIN RETURN 1 END ELSE BEGIN RETURN 0 END END RETURN -1 END   
GO
GRANT EXECUTE ON  [dbo].[aagValidateSourceBudgetTree] TO [DYNGRP]
GO
