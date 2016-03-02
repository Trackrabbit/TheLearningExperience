SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmHATBRemoveSchpDocs]  @iAgingDate datetime  = NULL,  @oAppError int   = NULL output  as  declare  @lControlLoop tinyint,  @lSqlError int,  @lSchpDocNum char(21)  while (@lControlLoop is NULL) begin  select @lControlLoop = 1   select @oAppError = 0  select @lSqlError = 0   if @iAgingDate = NULL  begin  select @oAppError = 1  break  end   declare   TrxCursor cursor  for  select   DocumentNumber  from  #TransactionTEMP  where  RMDocumentTypeAll = 2    open TrxCursor   if @@cursor_rows = 0  begin  deallocate TrxCursor  break  end   fetch next from  TrxCursor  into  @lSchpDocNum   while (@@fetch_status = 0)  begin  if @lSchpDocNum not in( select   SCHEDULE_NUMBER  from  RM20401  where  DOCDATE > @iAgingDate)  begin  delete  #TransactionTEMP  where  DocumentNumber = @lSchpDocNum  end  fetch next from  TrxCursor  into  @lSchpDocNum  end  deallocate TrxCursor end  return (@lSqlError)    
GO
GRANT EXECUTE ON  [dbo].[rmHATBRemoveSchpDocs] TO [DYNGRP]
GO
