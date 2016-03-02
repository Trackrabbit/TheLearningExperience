SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Transfer_Dist_Account]  @DocID varchar(15) ,  @Line integer,  @DistType smallint,  @AccountIndex integer OUTPUT  AS  select @AccountIndex = ACTINDX from SVC00731 where ORDDOCID = @DocID and LNITMSEQ = @Line  and SVC_Distribution_Type = @DistType and POSTED = 0 update SVC00731 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where ORDDOCID = @DocID and LNITMSEQ = @Line  and SVC_Distribution_Type = @DistType and POSTED = 0 return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Transfer_Dist_Account] TO [DYNGRP]
GO
