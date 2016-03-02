SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Document_Type_PM_Trx] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = (select DOCTYNAM from PM40102 where DOCTYPE = @iIntEnum)  RETURN(@oVarcharValuestring)  END  
GO
