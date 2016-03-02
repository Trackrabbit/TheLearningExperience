SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_GetCallTotalsToMove] (@RecordType smallint,  @FromCallNumber char(11),  @ToCallNumber char(11),  @FromServiceType char(11),  @ToServiceType char(11),  @FromCustomer char(15),  @ToCustomer char(15),  @FromAddress char(15),  @ToAddress char(15),  @CompleteDate datetime,  @NumberOfCalls int output) As select @NumberOfCalls = COUNT(*)  from SVC00200  where SRVRECTYPE = @RecordType and CALLNBR >= @FromCallNumber and CALLNBR <= @ToCallNumber  and SRVTYPE >= @FromServiceType and SRVTYPE <= @ToServiceType  and CUSTNMBR >= @FromCustomer and CUSTNMBR <= @ToCustomer  and ADRSCODE >= @FromAddress and ADRSCODE <= @ToAddress  and COMPDTE <= @CompleteDate return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetCallTotalsToMove] TO [DYNGRP]
GO
