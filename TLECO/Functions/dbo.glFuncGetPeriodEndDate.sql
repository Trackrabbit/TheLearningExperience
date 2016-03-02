SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glFuncGetPeriodEndDate]  (  @I_OpenYear smallint = NULL,  @I_Series smallint = NULL,  @I_PeriodID smallint = NULL  )  RETURNS datetime AS  BEGIN  declare @O_PeriodEndDate datetime   select top 1 @O_PeriodEndDate=PERDENDT from SY40100 where   SERIES=@I_Series   and YEAR1=@I_OpenYear   and PERIODID=@I_PeriodID   select @O_PeriodEndDate = isnull(@O_PeriodEndDate,'')  return(@O_PeriodEndDate) END   
GO
GRANT EXECUTE ON  [dbo].[glFuncGetPeriodEndDate] TO [DYNGRP]
GO
