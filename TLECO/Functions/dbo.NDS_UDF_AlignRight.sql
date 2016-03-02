SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_AlignRight]  (@OriText char(11), @TotalLength smallint)
  RETURNS nvarchar(50)
 AS 
BEGIN
  DECLARE @FinalStr AS nvarchar(50)
  SET @FinalStr = REPLICATE(' ', @TotalLength)
  SET @FinalStr = STUFF(@FinalStr, @TotalLength-LEN(@OriText)+1, LEN(@OriText), @OriText)
  RETURN @FinalStr
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_AlignRight] TO [DYNGRP]
GO
