SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_CheckOpenWOforRouteID] (  @Route_ID          char(31) )  as declare @numrows int select @numrows = count(*)  from SVC06100 where ROUTEID = @Route_ID  and  WORECTYPE = 2 return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_CheckOpenWOforRouteID] TO [DYNGRP]
GO
