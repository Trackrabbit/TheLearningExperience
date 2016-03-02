SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[aagValidateAllocationBatch]  @I_cBatchSource char(15) = NULL,  @I_cBatchNumber char(15) = NULL,  @IO_nError smallint output as  declare @iJournalEntry                  int, @iStatus                        int, @UNPOSTED                       smallint  select @UNPOSTED                       = 1  declare HeaderCursor INSENSITIVE cursor for select JRNENTRY from GL10000 with (NOLOCK) where BCHSOURC = @I_cBatchSource  and     BACHNUMB = @I_cBatchNumber and     PSTGSTUS = @UNPOSTED  open HeaderCursor  fetch next from  HeaderCursor into  @iJournalEntry while (@@fetch_status <> -1) begin   if (@@fetch_status = -2)  begin  break  end  Exec  @iStatus = aagValidateAllocationTrx  @iJournalEntry,  @IO_nError output  fetch next from   HeaderCursor  into   @iJournalEntry  end  deallocate HeaderCursor    
GO
GRANT EXECUTE ON  [dbo].[aagValidateAllocationBatch] TO [DYNGRP]
GO
