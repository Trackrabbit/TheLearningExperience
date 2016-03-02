SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icDistributionsExist]  @I_iJournalEntry int     = NULL,  @I_cOrigIntercompanyID char(5)  = NULL,  @I_tSearchForOrigDists tinyint  = NULL,  @O_tDistributionsExist tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE   tinyint  select   @O_tDistributionsExist = 0,  @O_iErrorState = 0  if @I_iJournalEntry  is NULL or  @I_cOrigIntercompanyID is NULL or  @I_tSearchForOrigDists is NULL begin  select @O_iErrorState = 20924  return end   select @TRUE = 1  if @I_tSearchForOrigDists = @TRUE begin  select   @O_tDistributionsExist = @TRUE   where  exists   (select   1  from  GL10001 with (NOLOCK)  where   INTERID = @I_cOrigIntercompanyID  and   JRNENTRY = @I_iJournalEntry) end else begin  select   @O_tDistributionsExist = @TRUE   where  exists   (select   1  from  GL10001 with (NOLOCK)  where   INTERID <> @I_cOrigIntercompanyID  and   JRNENTRY = @I_iJournalEntry) end  return   
GO
GRANT EXECUTE ON  [dbo].[icDistributionsExist] TO [DYNGRP]
GO
