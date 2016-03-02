SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_util_datetime_to_YYYYMMDD](  @In_datetime datetime,  @Out_date int output  ) as select @Out_date = convert(int,convert(char(10),@In_datetime,112))    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_datetime_to_YYYYMMDD] TO [DYNGRP]
GO
