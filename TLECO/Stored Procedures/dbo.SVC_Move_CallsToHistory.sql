SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Move_CallsToHistory] (@RecordType smallint,  @FromCallNumber char(11),  @ToCallNumber char(11),  @FromServiceType char(11),  @ToServiceType char(11),  @FromCustomer char(15),  @ToCustomer char(15),  @FromAddress char(15),  @ToAddress char(15),  @CompleteDate datetime  ) As  declare @CallNumber char(11)  declare cursor_move_service cursor for select CALLNBR from SVC00200  where SRVRECTYPE = @RecordType and CALLNBR >= @FromCallNumber and CALLNBR <= @ToCallNumber  and SRVTYPE >= @FromServiceType and SRVTYPE <= @ToServiceType  and CUSTNMBR >= @FromCustomer and CUSTNMBR <= @ToCustomer  and ADRSCODE >= @FromAddress and ADRSCODE <= @ToAddress  and COMPDTE <= @CompleteDate open cursor_move_service  FETCH NEXT FROM cursor_move_service INTO @CallNumber  while @@FETCH_STATUS = 0  BEGIN  exec SVC_Transfer_CallToHistory @RecordType,@CallNumber   FETCH NEXT FROM cursor_move_service INTO @CallNumber  END deallocate cursor_move_service  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Move_CallsToHistory] TO [DYNGRP]
GO
