SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_WO_On_Transfer] (@WOrecordtype int = NULL, @WOnumber varchar(11) = NULL)  as declare @numrows int if @WOrecordtype is NULL or @WOnumber is NULL begin return -1 end select @numrows = count(*) from SVC00701 where  WORECTYPE = @WOrecordtype and  WORKORDNUM = @WOnumber return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_WO_On_Transfer] TO [DYNGRP]
GO
