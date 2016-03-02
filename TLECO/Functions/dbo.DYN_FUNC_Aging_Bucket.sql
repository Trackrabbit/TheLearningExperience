SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Aging_Bucket] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) declare @PeriodDesc varchar(100) select @PeriodDesc = (select rtrim(RMPERDSC) from RM40201 where INDEX1 = @iIntEnum) set @oVarcharValuestring = isnull(@PeriodDesc,'') RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Aging_Bucket] TO [DYNGRP]
GO
