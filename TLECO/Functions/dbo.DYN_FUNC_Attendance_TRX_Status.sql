SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Attendance_TRX_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Posted' when @iIntEnum = 2 then 'Processing' when @iIntEnum = 3 then 'Processed' when @iIntEnum = 4 then 'Voided' when @iIntEnum = 5 then 'Accrual' when @iIntEnum = 6 then 'Auto Accrual' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Attendance_TRX_Status] TO [DYNGRP]
GO
