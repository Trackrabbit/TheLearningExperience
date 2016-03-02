SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_PM_Schedule_Check_Event]  ( @SCHEDID  char(10),  @PMDetailID char(9),  @Exist tinyint output) AS  select @Exist = 0 if exists(select * from SVC8009 where PMDTLID = @PMDetailID and SCHEDID = @SCHEDID)  select @Exist = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_PM_Schedule_Check_Event] TO [DYNGRP]
GO
