SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[tasmGetNextNoteIndex]  @I_sCompanyID smallint = null, @I_iSQLSessionID int = null, @I_noteincrement int = 1, @O_mNoteIndex numeric(19,5)= null output, @O_iErrorState int = null output  with encryption as  set deadlock_priority low  set transaction isolation level read uncommitted set nocount on  select @O_mNoteIndex = 0,  @O_iErrorState = 0  if ((@I_sCompanyID is null) or  (@I_iSQLSessionID is null)) begin  select @O_iErrorState = 3564   return (@O_iErrorState) end  select  @O_mNoteIndex = NOTEINDX  from  SY01500 (updlock)  where  CMPANYID = @I_sCompanyID   update SY01500 set   @O_mNoteIndex = NOTEINDX,  NOTEINDX = NOTEINDX + @I_noteincrement  where CMPANYID = @I_sCompanyID  if (@@rowcount <> 1) begin  select @O_iErrorState = 3565   return (@O_iErrorState) end  if (@O_mNoteIndex < 1) begin  select @O_mNoteIndex = 1 end   
GO
GRANT EXECUTE ON  [dbo].[tasmGetNextNoteIndex] TO [DYNGRP]
GO
