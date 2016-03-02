SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Document_Type_RM_Trx] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = (select DOCDESCR from RM40401 where RMDTYPAL = @iIntEnum)  RETURN(@oVarcharValuestring)  END  
GO
