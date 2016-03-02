SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpPostToDestinationCompanies]  @I_iSQLSessionID        int             = NULL,  @I_cProductName         char(30)        = NULL,  @I_tMDARegistered tinyint  = NULL,  @I_cUserID           char(15)        = NULL,  @I_sWindowType smallint = NULL,  @I_cOrigIntercompanyID char(5)  = NULL,  @O_cDestIntercompanyID char(5)  = NULL output,  @O_bLineMessages2 binary(4) = NULL output,  @O_iErrorState          int             = NULL  output as  declare  @TRUE tinyint,  @FALSE tinyint,  @cOrigBatchNumber char(15),  @cOrigAuditTrailCode char(13),  @iOrigJournalEntry int,  @cBatchComment char(30),  @cIntercompanyID char(5),  @cProcName char(40),  @iStatus int,  @iCursorError int,  @iError int,  @tTransaction tinyint,  @tLoop tinyint,  @cDBName char(10),  @LockVariable char (15)  select   @O_cDestIntercompanyID = '',  @O_bLineMessages2 = 0x00000000,  @O_iErrorState = 0,  @iStatus = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_iSQLSessionID is NULL or  @I_cProductName is NULL or  @I_tMDARegistered is NULL or  @I_cUserID is NULL or  @I_sWindowType is NULL or  @I_cOrigIntercompanyID is NULL  begin  select @O_iErrorState = 20877  break  end    select  @TRUE = 1,  @FALSE = 0   declare  LineItemsCursor INSENSITIVE  cursor for select distinct  #Company.IntercompanyID,  #Company.DatabaseName   from  #LineItems,  #Company   where  #Company.IntercompanyID = @I_cOrigIntercompanyID   or  #Company.IntercompanyID = #LineItems.IntercompanyID  order by  #Company.IntercompanyID    open LineItemsCursor   select @iCursorError = @@cursor_rows   if (@iCursorError = 0) or (@iCursorError = -1)  begin  deallocate LineItemsCursor  break  end    select  @cOrigBatchNumber = BatchNumber,  @cOrigAuditTrailCode = TRXSource,  @iOrigJournalEntry = JournalEntry  from  #TRXHeader   if @@rowcount <> 1  begin  deallocate LineItemsCursor  select @O_iErrorState = 20878  break  end    select @cBatchComment = rtrim(@cOrigBatchNumber) + ', ' + @I_cOrigIntercompanyID    fetch next from  LineItemsCursor  into  @cIntercompanyID,  @cDBName  while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 20926  break  end  if @cIntercompanyID = @I_cOrigIntercompanyID   begin  select @LockVariable =  (select   BACHNUMB  from  SY00500 with (TABLOCKX HOLDLOCK)  where  BCHSOURC = ''  and BACHNUMB = '')  end  else  begin   select @cProcName = rtrim(@cDBName) + '..icpCreateBatch'  exec @iStatus = @cProcName  @I_iSQLSessionID,  @I_cProductName,  @I_cUserID,  @I_sWindowType,  @cOrigAuditTrailCode,  @cIntercompanyID,  @cBatchComment,  @O_bLineMessages2 output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  break  end   if @iStatus <> 0 or @O_iErrorState <> 0  break    select @cProcName = rtrim(@cDBName) + '..icpCreateJournalEntry'  exec @iStatus = @cProcName  @I_iSQLSessionID,  @I_cProductName,  @I_tMDARegistered,  @I_cOrigIntercompanyID,  @iOrigJournalEntry,  @cIntercompanyID,  @O_bLineMessages2 output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  break  end   if @iStatus <> 0 or @O_iErrorState <> 0  break    end     fetch next from  LineItemsCursor  into  @cIntercompanyID,  @cDBName  end    deallocate LineItemsCursor  end   if @O_bLineMessages2 <> 0x00000000  select @O_cDestIntercompanyID = @cIntercompanyID  if @O_iErrorState <> 0 or @iStatus <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[icpPostToDestinationCompanies] TO [DYNGRP]
GO
