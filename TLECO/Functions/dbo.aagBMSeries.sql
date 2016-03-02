SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   function  [dbo].[aagBMSeries](@CB_Trans_Type char(1),@CB_Type smallint) returns  smallint AS  begin declare @SERIES smallint   if @CB_Trans_Type = 'D' and @CB_Type = 1 set @SERIES = 0  else if @CB_Trans_Type = 'D' and @CB_Type = 2 set @SERIES = 3  else if @CB_Trans_Type = 'D' and @CB_Type = 3 set @SERIES = 4  else if @CB_Trans_Type = 'P' and @CB_Type = 1 set @SERIES = 0  else if @CB_Trans_Type = 'P' and @CB_Type = 2 set @SERIES = 4  else if @CB_Trans_Type = 'P' and @CB_Type = 3 set @SERIES = 3  else if @CB_Trans_Type = 'R' and @CB_Type = 1 set @SERIES = 0  else if @CB_Trans_Type = 'R' and @CB_Type = 2 set @SERIES = 3   return @SERIES end    
GO
GRANT EXECUTE ON  [dbo].[aagBMSeries] TO [DYNGRP]
GO
