SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[cmGetLastJournalNumber] (@nLineSeqNum numeric(19,5) output, @iErrorState int=NULL output) as declare @execstring varchar(400) begin  SET nocount on   SELECT @iErrorState = 0   insert into CM40102 (SETUPKEY) values (1)  set @nLineSeqNum = scope_identity()   if  @@error <> 0   begin  SELECT @iErrorState = @@error   return(@@error)  end  if CONVERT(varchar(20), SERVERPROPERTY('productversion')) like '8.00.%'  select @execstring = 'delete from CM40102 where DEX_ROW_ID = ' + CONVERT(varchar(20),@nLineSeqNum) else  select @execstring = 'delete from CM40102 WITH (READPAST) where DEX_ROW_ID = ' + CONVERT(varchar(20),@nLineSeqNum) exec (@execstring)  end     
GO
GRANT EXECUTE ON  [dbo].[cmGetLastJournalNumber] TO [DYNGRP]
GO
