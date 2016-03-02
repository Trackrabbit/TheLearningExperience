SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE    FUNCTION [dbo].[aagGetChildNodes] ( @aaBudgetTreeID INTEGER, @aaCodeSequence INTEGER ) RETURNS @Table_aaCodeSequence TABLE (aaCodeSequence INTEGER, aaTrxDimCodeID INTEGER )  AS BEGIN DECLARE @aaLevel INTEGER DECLARE @LastNode INTEGER DECLARE @MaxLevel INTEGER DECLARE @aaTrxDimParCodeID INTEGER SELECT  @aaLevel = aaLevel FROM AAG00902 WHERE aaCodeSequence = @aaCodeSequence  AND aaBudgetTreeID = @aaBudgetTreeID SELECT @MaxLevel =  MAX(aaLevel) FROM AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID SELECT  @aaTrxDimParCodeID = aaTrxDimCodeID FROM AAG00902 WHERE  aaCodeSequence = @aaCodeSequence AND aaBudgetTreeID = @aaBudgetTreeID IF @aaLevel = @MaxLevel RETURN  SET @LastNode = NULL SELECT  TOP 1 @LastNode =   aaCodeSequence FROM AAG00902  WHERE aaCodeSequence > @aaCodeSequence AND aaLevel = @aaLevel  AND aaBudgetTreeID = @aaBudgetTreeID IF ( @aaLevel = 0 ) OR ( @LastNode IS NULL) BEGIN INSERT INTO @Table_aaCodeSequence  SELECT aaCodeSequence, aaTrxDimCodeID  FROM AAG00902 WHERE  aaTrxDimParCodeID = @aaTrxDimParCodeID AND aaTrxDimCodeID <> @aaTrxDimParCodeID  AND aaBudgetTreeID = @aaBudgetTreeID  AND aaCodeSequence > @aaCodeSequence ORDER BY aaCodeSequence RETURN END  INSERT INTO @Table_aaCodeSequence  SELECT aaCodeSequence, aaTrxDimCodeID FROM AAG00902 WHERE  aaCodeSequence > @aaCodeSequence AND aaCodeSequence < @LastNode AND  aaLevel = @aaLevel + 1 AND aaBudgetTreeID = @aaBudgetTreeID RETURN END     
GO
GRANT SELECT ON  [dbo].[aagGetChildNodes] TO [DYNGRP]
GO
