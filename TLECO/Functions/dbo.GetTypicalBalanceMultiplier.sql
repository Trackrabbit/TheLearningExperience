SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetTypicalBalanceMultiplier] (  @AcctCat int ) RETURNS int AS BEGIN  DECLARE @RetVal int  SELECT @RetVal =   CASE   WHEN @AcctCat IN (1,  2,  3,  4,  5,  6,  7,  8,  9,  10,   11, 12, 29, 30, 32, 33, 34, 35, 36, 37,   38, 39, 40, 41, 42, 44, 46, 47) THEN 1   ELSE -1  END RETURN @RetVal END   
GO
GRANT EXECUTE ON  [dbo].[GetTypicalBalanceMultiplier] TO [DYNGRP]
GO
