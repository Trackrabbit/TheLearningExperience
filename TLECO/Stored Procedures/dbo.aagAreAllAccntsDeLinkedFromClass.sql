SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[aagAreAllAccntsDeLinkedFromClass] @I_nHdrID int = 0, @Result int = 0 output as  Begin  declare  @ActIndx int,  @LocalCount int,  @AccntCount int  select @LocalCount=0  select @AccntCount=0  declare Curs cursor fast_forward for  select ACTINDX from AAG30001 where aaGLHdrID = @I_nHdrID    open Curs  fetch next from Curs into @ActIndx  WHILE @@fetch_status = 0  Begin  select @LocalCount=@LocalCount+1  if (select aaAcctClassID from AAG00200 where ACTINDX=@ActIndx)=0  select @AccntCount=@AccntCount+1   else  break  fetch next from Curs into @ActIndx   End   if @AccntCount=@LocalCount  select @Result=1  close Curs  Deallocate Curs  return End    
GO
GRANT EXECUTE ON  [dbo].[aagAreAllAccntsDeLinkedFromClass] TO [DYNGRP]
GO
