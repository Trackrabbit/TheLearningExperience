SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glFuncGetFiscalYear]  (  @I_TransactionDate datetime = NULL  )  RETURNS smallint AS  BEGIN  declare @O_Year smallint   select top 1 @O_Year=YEAR1 from SY40100 where   @I_TransactionDate between PERIODDT and PERDENDT  select @O_Year = isnull(@O_Year,0)  return(@O_Year) END   
GO
GRANT EXECUTE ON  [dbo].[glFuncGetFiscalYear] TO [DYNGRP]
GO
