SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCommentMaster] @I_vCMTSRIES smallint,     @I_vCOMMNTID char(15),    @I_vCMMTTEXT varchar(500) = '',   @O_iErrorState int = null output   with encryption as  set transaction isolation level read uncommitted set nocount on  select @O_iErrorState = 0    if (  @I_vCMTSRIES is null or  @I_vCOMMNTID is null or  @I_vCMMTTEXT is null  ) begin  select @O_iErrorState = 77     return (@O_iErrorState) end  if (@I_vCOMMNTID = '') begin  select @O_iErrorState = 78    return (@O_iErrorState) end  select @I_vCOMMNTID = upper(@I_vCOMMNTID)  if (not exists(select 1 from SY04200 (nolock) where COMMNTID = @I_vCOMMNTID)) begin  insert SY04200  (  CMTSRIES,  COMMNTID,  NOTEINDX,  CMMTTEXT  )  select  @I_vCMTSRIES,    @I_vCOMMNTID,    0,     @I_vCMMTTEXT    if (@@error <> 0)  begin  select @O_iErrorState = 81    return  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCommentMaster] TO [DYNGRP]
GO
