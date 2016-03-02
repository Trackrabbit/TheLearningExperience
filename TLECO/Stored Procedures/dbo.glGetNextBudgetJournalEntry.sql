SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glGetNextBudgetJournalEntry]  @l_tINCheckWORKFiles                    tinyint  = NULL,  @I_iSQLSessionID                        int             = NULL,  @IO_iOUTJournalEntry                    int             = NULL  output,  @O_tOUTOK                               tinyint  = NULL  output,  @O_iErrorState                          int             = NULL  output as  declare         @iJournalEntryOK        int,  @TRUE                   int,  @NEW                    int,   @tTransaction           tinyint,  @iError int  if      ( (@l_tINCheckWORKFiles is NULL) or  (@IO_iOUTJournalEntry is NULL) or  (@I_iSQLSessionID is NULL) ) begin  select          @O_iErrorState = 20159,  @IO_iOUTJournalEntry = 0,  @O_tOUTOK = 0  return end  select  @O_tOUTOK               = 0,  @IO_iOUTJournalEntry    = 0,  @O_iErrorState          = 0,  @iJournalEntryOK        = 1,     @TRUE   = 1,  @NEW    = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  while (@iJournalEntryOK <> @NEW) begin  update  GL40000  set  @IO_iOUTJournalEntry = NXTBUDJRLENT,  NXTBUDJRLENT = NXTBUDJRLENT + 1   if ( @@rowcount <> 1)  begin  select  @O_iErrorState  = 20075  break  end   if (@IO_iOUTJournalEntry = 99999999) or (@IO_iOUTJournalEntry = 0)  begin  select  @IO_iOUTJournalEntry = 1  update  GL40000  set  NXTBUDJRLENT = 2   if ( @@rowcount <> 1)  begin  select @O_iErrorState = 20075  break  end  end  if not exists (  select  1  from  GL32000 with (NOLOCK)  where  JRNENTRY = @IO_iOUTJournalEntry )  begin  select @iJournalEntryOK = @NEW     end  else   begin  select @iJournalEntryOK = 1  end   if ( ( @l_tINCheckWORKFiles = @TRUE ) and ( @iJournalEntryOK = @NEW) )  begin  select  @iJournalEntryOK = 1    if not exists (   select   1  from  GL12000 with (NOLOCK)  where   JRNENTRY = @IO_iOUTJournalEntry )  begin  select @iJournalEntryOK = @NEW      end   end   end   if @O_iErrorState <> 0 begin  select @IO_iOUTJournalEntry = 0  if @tTransaction = 1  rollback transaction end else begin  select  @O_tOUTOK = @TRUE  if @tTransaction = 1  commit transaction end  return   
GO
GRANT EXECUTE ON  [dbo].[glGetNextBudgetJournalEntry] TO [DYNGRP]
GO