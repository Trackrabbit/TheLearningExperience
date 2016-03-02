SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_timelength_to_string] (  @Hours integer,  @Minutes integer,  @OutString varchar(20) OUTPUT ) as set nocount on declare @HOURSTRING varchar(20),  @MINUTESTRING varchar(20) select @HOURSTRING =  CONVERT(varchar(20),@Hours),  @MINUTESTRING =  CONVERT(varchar(20),@Minutes) if LEN(@HOURSTRING) = 2  select @HOURSTRING = '0' + @HOURSTRING else if LEN(@HOURSTRING) = 1  select @HOURSTRING = '00' + @HOURSTRING else if LEN(@HOURSTRING) < 1  select @HOURSTRING = '000' if @MINUTESTRING is null  select @MINUTESTRING = '00' if LEN(@MINUTESTRING) < 2  select @MINUTESTRING = '0' + @MINUTESTRING select @OutString = RTRIM(@HOURSTRING) + RTRIM(@MINUTESTRING) set nocount off    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_timelength_to_string] TO [DYNGRP]
GO
