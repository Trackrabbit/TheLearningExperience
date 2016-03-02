SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[aagDeletePriliminaryData] (  @aaBudgetID  INT ,  @OverWrite SMALLINT = 0 ) AS  IF @OverWrite = 1  BEGIN  DELETE FROM AAG00904 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 0   UPDATE AAG00904 SET aaActualPriliminary = 0 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 1   DELETE FROM AAG00905 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 0   UPDATE AAG00905 SET aaActualPriliminary = 0 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 1    END  ELSE  BEGIN  DELETE FROM AAG00904 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 1   DELETE FROM AAG00905 WHERE  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 1   END    
GO
GRANT EXECUTE ON  [dbo].[aagDeletePriliminaryData] TO [DYNGRP]
GO
