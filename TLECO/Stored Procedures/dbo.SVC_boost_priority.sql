SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_boost_priority](  @In_Service_call_number char(11),  @In_Record_type smallint,  @In_Priority_boost int  ) AS  update SVC00200  set priorityLevel = CASE   WHEN (priorityLevel > 1 + @In_Priority_boost)   THEN priorityLevel - @In_Priority_boost  ELSE 1  END  where CALLNBR = @In_Service_call_number and SRVRECTYPE = @In_Record_type    
GO
GRANT EXECUTE ON  [dbo].[SVC_boost_priority] TO [DYNGRP]
GO
