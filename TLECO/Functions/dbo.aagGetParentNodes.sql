SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[aagGetParentNodes] ( @aaBudgetID INTEGER, @aaCodeSequence INTEGER ) RETURNS @Table_aaCodeSequence TABLE (aaCodeSequence INTEGER, aaTrxDimCodeID INTEGER )  AS BEGIN  DECLARE @LEN INTEGER  DECLARE @INC INTEGER  DECLARE @STRLEN INTEGER  DECLARE @aaLvlCodeString NVARCHAR(51),@aaBudgetTreeID INTEGER ,@I INTEGER ,@aaCodeSequenceTemp INTEGER  DECLARE @TEMPTABLE     TABLE  (  aaCodeSequence VARCHAR(1000)  )   SELECT @aaBudgetTreeID=aaBudgetTreeID FROM AAG00903 where aaBudgetID = @aaBudgetID    SELECT @aaLvlCodeString = LTRIM(RTRIM(aaLvlCodeString)) + ',' FROM AAG00902   WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence = @aaCodeSequence   SET @LEN = LEN(@aaLvlCodeString)  SET @INC = 1  SET @STRLEN = 1  SET @I = 1   IF @LEN <> 0  BEGIN  WHILE @INC <=@LEN   BEGIN  IF SUBSTRING(@aaLvlCodeString,@INC,1) = ','  BEGIN  SELECT @aaCodeSequenceTemp = aaCodeSequence FROM AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaLvlCodeString = SUBSTRING(@aaLvlCodeString,1,@I-1)  INSERT INTO @TEMPTABLE VALUES(@aaCodeSequenceTemp)  SET @STRLEN = 0  END  SET @STRLEN = @STRLEN - 1  SET @INC = @INC + 1  SET @I = @I + 1  END   END   INSERT INTO @Table_aaCodeSequence  select aaCodeSequence, aaTrxDimCodeID from AAG00902  where aaBudgetTreeID = @aaBudgetTreeID  and (aaCodeSequence in (select aaCodeSequence from @TEMPTABLE)  or aaLevel = 0 ) AND aaCodeSequence NOT IN(@aaCodeSequence)   RETURN END    
GO
GRANT SELECT ON  [dbo].[aagGetParentNodes] TO [DYNGRP]
GO
