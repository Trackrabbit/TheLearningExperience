SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_EIC_Filing_Status] (@iStringStatus varchar(10)) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iStringStatus = '' then 'Not Eligible' else   (select ISNULL(STSDESCR,'') from DYNAMICS..UPR41301 where TAXCODE = 'EIC' and TXFLGSTS = @iStringStatus)   end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_EIC_Filing_Status] TO [DYNGRP]
GO
