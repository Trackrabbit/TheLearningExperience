SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Purge_Depot_Dist]  @RecordType smallint,  @WONumber char(11) as   delete from SVC06130  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber  delete from SVC06131  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Purge_Depot_Dist] TO [DYNGRP]
GO
