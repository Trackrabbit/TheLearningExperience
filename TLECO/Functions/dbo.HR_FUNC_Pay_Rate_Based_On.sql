SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Pay_Rate_Based_On] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'Seat' when @iIntEnum = 1 then 'Employee Pay Code' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
