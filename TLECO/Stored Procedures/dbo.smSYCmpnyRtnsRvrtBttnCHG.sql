SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smSYCmpnyRtnsRvrtBttnCHG]  @I_sSeries smallint = NULL,  @I_sEndType smallint = NULL,  @I_iSQLSessionID int  = NULL,  @O_iErrorState int  = NULL output as  declare  @tTransaction tinyint,   @iNumberOfRows int    if @I_sSeries is NULL or  @I_sEndType is NULL or  @I_iSQLSessionID is NULL begin  select @O_iErrorState = 20391  return end else  select @O_iErrorState = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  select  @iNumberOfRows = count(ENDTYPE) from  SY02500 where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType  if @iNumberOfRows > 0 begin  delete  SY02500  where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType   if @@rowcount <> @iNumberOfRows  begin  if @tTransaction = 1  rollback transaction   select @O_iErrorState = 20392  return  end end  select  @iNumberOfRows = count(ENDTYPE) from  DYNAMICS.dbo.SY02700 where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType  if @iNumberOfRows > 0 begin  insert into  SY02500(  ENDTYPE,  SERIES,  MODULE1,  INDEX1,  RUTINAME,  USERID,  PALCMDTP,  PALETCMD,  APLICFIL,  DICTID)  select  ENDTYPE,  SERIES,  MODULE1,  INDEX1,  RUTINAME,  USERID,  PALCMDTP,  PALETCMD,  APLICFIL,  DICTID  from  DYNAMICS.dbo.SY02700  where  SERIES = @I_sSeries  and ENDTYPE = @I_sEndType   if @@rowcount <> @iNumberOfRows  begin  if @tTransaction = 1  rollback transaction   select @O_iErrorState = 20393  return  end end  if @tTransaction = 1  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[smSYCmpnyRtnsRvrtBttnCHG] TO [DYNGRP]
GO
