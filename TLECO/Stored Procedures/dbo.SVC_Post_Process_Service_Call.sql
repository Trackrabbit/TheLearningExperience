SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Post_Process_Service_Call] ( @srvrectype int = NULL, @callnbr varchar(10) = NULL )  As  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Post_Process_Service_Call] TO [DYNGRP]
GO
