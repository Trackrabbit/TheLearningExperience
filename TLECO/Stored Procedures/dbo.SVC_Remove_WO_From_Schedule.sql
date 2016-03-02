SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Remove_WO_From_Schedule](@WORECTYPE smallint,@WORKORDNUM varchar(11)) As declare @STATIONID char(11) set nocount on delete from SVC06105 where WORECTYPE = @WORECTYPE and WORKORDNUM = @WORKORDNUM delete from SVC06300 where WORECTYPE = @WORECTYPE and WORKORDNUM = @WORKORDNUM return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Remove_WO_From_Schedule] TO [DYNGRP]
GO
