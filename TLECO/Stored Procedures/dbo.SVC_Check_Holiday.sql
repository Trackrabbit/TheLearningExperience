SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Holiday]  (@OFFICEID char(11),  @CHECKDATE datetime,  @CHECKTIME datetime,  @HOLIDAY smallint OUTPUT,  @CONTRACT smallint OUTPUT,  @SERVICE smallint OUTPUT) As declare @CheckDateTime datetime set nocount on exec SVC_util_combine_date_time @CHECKDATE, @CHECKTIME, @CheckDateTime OUTPUT  select @CONTRACT = CONTFLAG,@SERVICE = Service_Flag from SVC00903 where SVC00903.OFFID = @OFFICEID and  @CheckDateTime between (CONVERT(char(10),SVC00903.STRTDATE,102) + ' ' + CONVERT(char(5),SVC00903.STRTTIME,108))  and (CONVERT(char(10),SVC00903.ENDDATE,102) + ' ' + CONVERT(char(5),SVC00903.ENDTME,108)) if @@ROWCOUNT > 0   select @HOLIDAY = 1 return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Holiday] TO [DYNGRP]
GO
