SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDefaultMinDate]() RETURNS datetime AS  BEGIN  DECLARE   @max_date datetime  select @max_date = GETDATE()  select @max_date = DATEADD(mm,1-DATEPART(mm,@max_date),@max_date)  select @max_date = DATEADD(dd,1-DATEPART(dd,@max_date),@max_date)  select @max_date = DATEADD(yy,1900-DATEPART(yy,@max_date),@max_date)  select @max_date = CAST(FLOOR( CAST( @max_date AS FLOAT ) )AS DATETIME)   RETURN @max_date END   
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDefaultMinDate] TO [rpt_all user]
GO
