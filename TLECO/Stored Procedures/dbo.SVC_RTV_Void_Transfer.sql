SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_RTV_Void_Transfer] (  @RTV char(15) ,  @RTVLine numeric(19,5)  ) as declare @TransferLine int, @Transfer char(15)  select @Transfer = rtrim(Transfer_Reference), @TransferLine = TRANSLINESEQ from SVC05601 where RTV_Number = @RTV and RTV_Line  = @RTVLine if @Transfer > '' and exists(select * from SVC00700 where ORDDOCID = @Transfer)  Begin  update SVC00700 set STATUS = 7 where ORDDOCID = @Transfer  exec SVC_Transfer_TransferToHistory @Transfer  end   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Void_Transfer] TO [DYNGRP]
GO
