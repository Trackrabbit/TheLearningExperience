SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_FormatDate] (@dtDate DATETIME) returns VARCHAR(10) as  begin   RETURN   dbo.HR_FUNC_Date2Digits(CAST(MONTH(@dtDate) as VARCHAR(2))) + '/' +   dbo.HR_FUNC_Date2Digits(CAST(DAY(@dtDate)   as VARCHAR(2))) + '/' +   CAST(YEAR(@dtDate) as VARCHAR(4))  END  
GO
