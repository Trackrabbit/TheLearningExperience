SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Depreciation_Method] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Straight-Line Orig Life' when @iIntEnum = 2 then 'Straight-Line Rem Life' when @iIntEnum = 3 then '125% DB' when @iIntEnum = 4 then '150% DB' when @iIntEnum = 5 then '175% DB' when @iIntEnum = 6 then '200% DB' when @iIntEnum = 7 then 'SOY Digits' when @iIntEnum = 8 then 'Remaining Life' when @iIntEnum = 9 then 'Amortization' when @iIntEnum = 10 then 'ACRS Personal' when @iIntEnum = 11 then 'ACRS Real' when @iIntEnum = 12 then 'ACRS Real MSL' when @iIntEnum = 13 then 'ACRS LIH' when @iIntEnum = 14 then 'ACRS Foreign Real' when @iIntEnum = 15 then 'No Depreciation' when @iIntEnum = 16 then 'Declining Balance' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
