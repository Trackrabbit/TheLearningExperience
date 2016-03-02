SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Tech_Labor_Inquiry] (@TechID char(11),  @FromDate datetime,  @ToDate datetime,  @NewCalls int output,  @OpenCalls int output,  @ClosedCalls int output) As  declare @CompleteStatus char(3) declare @HistoryCalls int  select @CompleteStatus = Complete_Status from SVC00998 select @NewCalls = COUNT(*)  from SVC00200  where TECHID = @TechID and SRVRECTYPE = 2  and ENTDTE >= @FromDate and ENTDTE <= @ToDate  select @OpenCalls = COUNT(*)  from SVC00200  where TECHID = @TechID  and SRVSTAT < @CompleteStatus  select @ClosedCalls =  COUNT(*) from SVC00200 where TECHID = @TechID and SRVRECTYPE = 3 and COMPDTE >= @FromDate and COMPDTE <= @ToDate select @HistoryCalls =  COUNT(*) from SVC30200 where TECHID = @TechID and SRVRECTYPE = 3 and COMPDTE >= @FromDate and COMPDTE <= @ToDate select @ClosedCalls = @ClosedCalls + @HistoryCalls return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Tech_Labor_Inquiry] TO [DYNGRP]
GO
