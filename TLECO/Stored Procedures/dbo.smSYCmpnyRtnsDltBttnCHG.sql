SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smSYCmpnyRtnsDltBttnCHG]  @I_sSeries smallint = NULL,  @I_sEndType smallint = NULL,  @I_sIndex smallint = NULL,  @I_iSQLSessionID int  = NULL,  @O_iErrorState int  = NULL output as  declare  @tTransaction tinyint,   @iNumberOfRows int    if @I_sSeries is NULL or  @I_sEndType is NULL or  @I_sIndex is NULL or  @I_iSQLSessionID is NULL begin  select @O_iErrorState = 20388  return end else  select @O_iErrorState = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  delete  SY02500 where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType  and INDEX1 = @I_sIndex  if @@rowcount <> 1  begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20389  return end  select  @iNumberOfRows = count(ENDTYPE) from  SY02500 where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType  and INDEX1 > @I_sIndex  if @iNumberOfRows > 0 begin  update  SY02500  set  INDEX1 = INDEX1 - 1  where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType  and INDEX1 > @I_sIndex   if @@rowcount <> @iNumberOfRows  begin  if @tTransaction = 1  rollback transaction   select @O_iErrorState = 20390  return  end end  if @tTransaction = 1  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[smSYCmpnyRtnsDltBttnCHG] TO [DYNGRP]
GO
