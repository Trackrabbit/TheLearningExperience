SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Account_Category_Number] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) declare @CategoryDesc varchar(100) select @CategoryDesc = (select rtrim(ACCATDSC) from GL00102 where ACCATNUM = @iIntEnum) set @oVarcharValuestring = isnull(@CategoryDesc,'') RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Account_Category_Number] TO [DYNGRP]
GO
