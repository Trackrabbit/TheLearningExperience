SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create function  [dbo].[aagBMDocType](@CB_Trans_Type char(1),@SERIES smallint) returns  smallint AS  begin declare @DOCTYPE smallint  if (@CB_Trans_Type = 'P' and @SERIES = 0) or @CB_Trans_Type = '1' set @DOCTYPE  = 1  else if (@CB_Trans_Type = 'D' and @SERIES = 0) or @CB_Trans_Type = '2' set @DOCTYPE  = 2  else if (@CB_Trans_Type = 'P' and @SERIES = 4) or @CB_Trans_Type = '3' set @DOCTYPE  =  3  else if (@CB_Trans_Type = 'D' and @SERIES = 4) or @CB_Trans_Type = '4' set @DOCTYPE = 4  else if (@CB_Trans_Type = 'P' and @SERIES = 3) or @CB_Trans_Type = '5' set @DOCTYPE = 5  else if (@CB_Trans_Type = 'D' and @SERIES = 3) or @CB_Trans_Type = '6'  set @DOCTYPE = 6  else if @CB_Trans_Type = 'T'  set @DOCTYPE = 7  else if @CB_Trans_Type = 'C'  set @DOCTYPE = 8  else if @CB_Trans_Type = 'R'  set @DOCTYPE = 9   return @DOCTYPE end    
GO
GRANT EXECUTE ON  [dbo].[aagBMDocType] TO [DYNGRP]
GO
