SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icgl_erCorrespondingUnitsBalance]  @I_iJournalEntry integer  = NULL,  @O_tBalancedCUs tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE    tinyint,  @FALSE tinyint,  @cICID char(5),  @cCorrUnit char(5),  @mCUFunctionalAmt numeric(19,5),  @mCUOriginatingAmt numeric(19,5),  @mICIDFunctionalAmt numeric(19,5),  @mICIDOriginatingAmt numeric(19,5)  select @TRUE    = 1,  @FALSE   = 0,  @mCUFunctionalAmt = 0.0,  @mCUOriginatingAmt = 0.0,  @mICIDFunctionalAmt = 0.0,  @mICIDOriginatingAmt = 0.0  select   @O_tBalancedCUs = @TRUE,  @O_iErrorState  = 0  if @I_iJournalEntry is NULL  begin  select @O_iErrorState = 21074   return end   declare CUCursor INSENSITIVE cursor for  select distinct  CorrespondingUnit,  INTERID  from  GL10001 with (NOLOCK)   where   JRNENTRY   =  @I_iJournalEntry   and CorrespondingUnit  <>  ''  open CUCursor  if @@cursor_rows <> 0  begin  fetch next from   CUCursor  into  @cCorrUnit,  @cICID    while (@@fetch_status <> -1)  begin  select @mCUFunctionalAmt =   isnull(sum(DEBITAMT - CRDTAMNT),0.0)   from GL10001 with (NOLOCK)   where JRNENTRY = @I_iJournalEntry and CorrespondingUnit = @cCorrUnit and INTERID = @cICID   select @mICIDFunctionalAmt =   isnull(sum(DEBITAMT - CRDTAMNT),0.0)   from GL10001 with (NOLOCK)   where JRNENTRY = @I_iJournalEntry and CorrespondingUnit = @cICID and INTERID = @cCorrUnit   select @mCUOriginatingAmt =   isnull(sum(ORDBTAMT - ORCRDAMT),0.0)   from GL10001 with (NOLOCK)   where JRNENTRY = @I_iJournalEntry and CorrespondingUnit = @cCorrUnit and INTERID = @cICID   select @mICIDOriginatingAmt =   isnull(sum(ORDBTAMT - ORCRDAMT),0.0)   from GL10001 with (NOLOCK)   where JRNENTRY = @I_iJournalEntry and CorrespondingUnit = @cICID and INTERID = @cCorrUnit   if ((@mCUFunctionalAmt + @mICIDFunctionalAmt) <> 0.0) AND ((@mCUOriginatingAmt + @mICIDOriginatingAmt) <> 0.0)  begin  select @O_tBalancedCUs = @FALSE  break  end   fetch next from   CUCursor  into  @cCorrUnit,  @cICID   end    end    deallocate CUCursor  return    
GO
GRANT EXECUTE ON  [dbo].[icgl_erCorrespondingUnitsBalance] TO [DYNGRP]
GO
