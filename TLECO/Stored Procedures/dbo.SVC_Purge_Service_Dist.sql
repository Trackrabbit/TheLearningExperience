SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Purge_Service_Dist]  @srvrectype int ,  @callnbr varchar(11)  as   delete from SVC30230  where SRVRECTYPE = @srvrectype and CALLNBR = @callnbr   delete from SVC30231  where SRVRECTYPE = @srvrectype and CALLNBR = @callnbr  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Purge_Service_Dist] TO [DYNGRP]
GO
