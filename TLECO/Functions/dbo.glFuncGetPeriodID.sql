SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glFuncGetPeriodID]  (  @I_TransationDate datetime = NULL,  @I_OpenYear smallint = NULL,  @I_Series smallint = NULL  )  RETURNS smallint AS  BEGIN  declare @O_PeriodID smallint   select top 1 @O_PeriodID=PERIODID from SY40100 where   SERIES=@I_Series   and YEAR1=@I_OpenYear   and @I_TransationDate between PERIODDT and PERDENDT  select @O_PeriodID = isnull(@O_PeriodID,0)  return(@O_PeriodID) END   
GO
GRANT EXECUTE ON  [dbo].[glFuncGetPeriodID] TO [DYNGRP]
GO
