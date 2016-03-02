SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_convert_timelength_to_string]  (  @Hours integer,  @Minutes integer,  @OutString varchar(20) OUTPUT ) as set nocount on declare @HOURSTRING varchar(20),  @MINUTESTRING varchar(20) select @HOURSTRING =  CONVERT(varchar(20),@Hours),  @MINUTESTRING =  CONVERT(varchar(20),@Minutes) if LEN(@HOURSTRING) < 2  select @HOURSTRING = '0' + @HOURSTRING if LEN(@HOURSTRING) < 3  select @HOURSTRING = '0' + @HOURSTRING  if LEN(@MINUTESTRING) < 2  select @MINUTESTRING = '0' + @MINUTESTRING select @OutString = @HOURSTRING + @MINUTESTRING set nocount off  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_util_convert_timelength_to_string] TO [DYNGRP]
GO
