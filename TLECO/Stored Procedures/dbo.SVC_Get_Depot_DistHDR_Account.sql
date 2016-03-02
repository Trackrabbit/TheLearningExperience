SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Depot_DistHDR_Account]  @WONumber char(11),  @RecordType smallint,  @Sequence integer,  @DistType smallint,  @AccountIndex integer OUTPUT  AS  select @AccountIndex = ACTINDX from SVC06130 where WORECTYPE = @RecordType  and WORKORDNUM = @WONumber and SVC_Distribution_Type = @DistType and POSTED = 0  and SEQNUMBR = @Sequence update SVC06130 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber   and SVC_Distribution_Type = @DistType and POSTED = 0 and SEQNUMBR = @Sequence  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Depot_DistHDR_Account] TO [DYNGRP]
GO
