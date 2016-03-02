SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_PM_Schedule_Resequence] ( @SCHEDID  char(10),  @LINESEQ integer) AS declare @NewSeq numeric(19,5) declare @MaxNumber numeric(19,5) declare @MinNumber numeric(19,5) declare @LineNumber numeric(19,5) declare @LineCount integer declare @asc tinyint alter table SVC8009 disable trigger all  select @MaxNumber = Max(LNSEQNBR),@MinNumber = Min(LNSEQNBR),@LineCount = COUNT(*)  from SVC8009 where SCHEDID= @SCHEDID and LNSEQNBR = @LINESEQ select @NewSeq = (@LineCount * 100.0)   if @MinNumber > @NewSeq +100.0  begin  select @NewSeq = 100.0  end  else  begin  if @MaxNumber >= @NewSeq  select @NewSeq = @MaxNumber +100.0  end declare Cont_seq cursor for select LNSEQNBR from SVC8009 where  SCHEDID = @SCHEDID order by LNSEQNBR asc BEGIN TRANSACTION  open Cont_seq   fetch next from Cont_seq into @LineNumber   while @@FETCH_STATUS = 0 and @LineCount <> 0  BEGIN  update SVC8009 set LNSEQNBR = @NewSeq where SCHEDID = @SCHEDID  and  LNSEQNBR = @LINESEQ and  LNSEQNBR = @LineNumber  if @@error <> 0 goto badentry  select @NewSeq = @NewSeq + 100.0  select @LineCount = @LineCount - 1  fetch next from Cont_seq into @LineNumber   END COMMIT TRANSACTION deallocate Cont_seq  alter table SVC8009 enable trigger all  return(0) badentry:  rollback transaction  deallocate Cont_seq  alter table SVC8009 enable trigger all  return(99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_PM_Schedule_Resequence] TO [DYNGRP]
GO
