SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_GL_Ledger_Name] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = (select Ledger_Name from GL40001 where Ledger_ID = @iIntEnum)  RETURN(@oVarcharValuestring)  END  
GO
