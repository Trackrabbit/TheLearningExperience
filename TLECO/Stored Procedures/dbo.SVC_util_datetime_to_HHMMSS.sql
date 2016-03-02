SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_util_datetime_to_HHMMSS](  @In_datetime datetime,  @Out_time int output  ) as  select @Out_time = convert(int,stuff(stuff(convert(char(10),@In_datetime,108),6,1,null),3,1,null))    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_datetime_to_HHMMSS] TO [DYNGRP]
GO
