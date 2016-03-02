SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagDeleteSingleAccount]  (  @aaBudgetID INTEGER ,  @aaCodeSequence INTEGER ,  @ACTINDX INTEGER ) AS BEGIN  DECLARE @aaBudgetTreeID INTEGER  SELECT @aaBudgetTreeID = aaBudgetTreeID FROM AAG00903 WHERE aaBudgetID = @aaBudgetID  DELETE FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND ACTINDX = @ACTINDX AND aaCodeSequence in (   SELECT aaCodeSequence FROM dbo.aagGetAllChildNodes( @aaBudgetTreeID, @aaCodeSequence )) END    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteSingleAccount] TO [DYNGRP]
GO
