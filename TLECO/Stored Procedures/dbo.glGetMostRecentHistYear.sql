SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glGetMostRecentHistYear]  @iYear smallint  output as  declare @lControlLoop tinyint declare @lReturnStatus int  select @lReturnStatus = 0  while (@lControlLoop is NULL) begin  select @lControlLoop = 1   declare  PeriodCursor  cursor  scroll   for   select  YEAR1  from  SY40101  where  HISTORYR = 1  order by  FSTFSCDY    open PeriodCursor   if @@cursor_rows = 0  begin  break  end   fetch   last   from  PeriodCursor  into   @iYear  end   deallocate PeriodCursor return(@lReturnStatus)    
GO
GRANT EXECUTE ON  [dbo].[glGetMostRecentHistYear] TO [DYNGRP]
GO
