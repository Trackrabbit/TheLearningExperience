SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_FormatPhoneNumber] (@Phone char(21))
  RETURNS nvarchar(50)
 AS 
BEGIN
  DECLARE @FinalStr AS nvarchar(50)
  SET @FinalStr = '(' + SUBSTRING(@Phone, 1, 3) + ') '
  SET @FinalStr = @FinalStr + SUBSTRING(@Phone, 4, 3) + '-' + SUBSTRING(@Phone, 7, 4)
  SET @FinalStr = @FinalStr +  + '  Ext. ' + SUBSTRING(@Phone,11, 4)
  RETURN @FinalStr
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_FormatPhoneNumber] TO [DYNGRP]
GO
