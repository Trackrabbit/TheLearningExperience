SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Purge_Transfer_Dist]  @DocID varchar(15) as   delete from SVC30731  where ORDDOCID = @DocID  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Purge_Transfer_Dist] TO [DYNGRP]
GO
