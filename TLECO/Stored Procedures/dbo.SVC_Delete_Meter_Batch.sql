SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Delete_Meter_Batch](@BatchID char(15)) as delete SVC10301 where BACHNUMB = @BatchID delete SVC10300 where BACHNUMB = @BatchID    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Meter_Batch] TO [DYNGRP]
GO
