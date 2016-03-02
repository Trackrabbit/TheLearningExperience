SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDefaultMaxDate]() RETURNS datetime AS  BEGIN  DECLARE   @max_date datetime  select @max_date = GETDATE()  select @max_date = DATEADD(mm,12-DATEPART(mm,@max_date),@max_date)  select @max_date = DATEADD(dd,31-DATEPART(dd,@max_date),@max_date)  select @max_date = DATEADD(yy,9999-DATEPART(yy,@max_date),@max_date)  select @max_date = CAST(FLOOR( CAST( @max_date AS FLOAT ) )AS DATETIME)   RETURN @max_date END   
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMaxDate] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMaxDate] TO [rpt_all user]
GO
