SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Date2Digits] (@sValue VARCHAR(2)) returns VARCHAR(2) as  begin   IF (LEN(@sValue) < 2 )  SET @sValue = '0' + @sValue  RETURN @sValue  END  
GO
