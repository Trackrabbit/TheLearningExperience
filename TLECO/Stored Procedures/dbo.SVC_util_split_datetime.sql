SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_util_split_datetime](@In_datetime datetime,  @Out_date datetime output,  @Out_time datetime output  ) as select @Out_date = convert(char(10),@In_datetime,101) select @Out_time = convert(char(10),@In_datetime,108)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_split_datetime] TO [DYNGRP]
GO
