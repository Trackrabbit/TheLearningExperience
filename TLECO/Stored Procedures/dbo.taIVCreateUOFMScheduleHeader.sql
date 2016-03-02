SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreateUOFMScheduleHeader] @I_vUOMSCHDL  char(10),    @I_vUMSCHDSC  char(30),   @I_vBASEUOFM char(8),   @I_vUMDPQTYS smallint=0,    @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',       @I_vUSRDEFND2  char(50) = '',       @I_vUSRDEFND3  char(50) = '',       @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @NOTEINDX numeric(19,5),  @CMPANYID smallint,  @iGetNextNoteIdxErrState int,  @iAddCodeErrState int,    @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @iError int     select  @CMPANYID = 0,  @iStatus = 0,   @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taIVCreateUOFMScheduleHeaderPre  @I_vUOMSCHDL output,  @I_vUMSCHDSC output,  @I_vBASEUOFM output,  @I_vUMDPQTYS output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 4752    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vUOMSCHDL is NULL or  @I_vUMSCHDSC is NULL or  @I_vBASEUOFM is NULL or   @I_vUMDPQTYS is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or   @I_vUSRDEFND2 is NULL or   @I_vUSRDEFND3 is NULL or   @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 4753    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vUOMSCHDL = UPPER(@I_vUOMSCHDL)  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 4754   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vUOMSCHDL = '' ) begin  select @O_iErrorState = 4755     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vUMSCHDSC = '' ) begin  select @O_iErrorState = 4756     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vBASEUOFM = '' ) begin  select @O_iErrorState = 4757     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUMDPQTYS < 0 or @I_vUMDPQTYS > 5 )  begin  select @O_iErrorState = 4758     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   select @I_vUMDPQTYS = @I_vUMDPQTYS + 1  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 ) begin  select @O_iErrorState = 4759     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@O_iErrorState = 0) begin  if not exists( select 1 from IV40201 (nolock) where  UOMSCHDL = @I_vUOMSCHDL )   begin  insert into IV40201 ( UOMSCHDL,  UMSCHDSC,  NOTEINDX,  BASEUOFM,  UMDPQTYS  )  select   @I_vUOMSCHDL,    @I_vUMSCHDSC,    @NOTEINDX,    @I_vBASEUOFM,    @I_vUMDPQTYS    if @@error <> 0  begin  select @O_iErrorState = 4760     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  select @O_iErrorState = 4761    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taIVCreateUOFMScheduleHeaderPost  @I_vUOMSCHDL ,  @I_vUMSCHDSC ,  @I_vBASEUOFM ,   @I_vUMDPQTYS ,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 4762    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreateUOFMScheduleHeader] TO [DYNGRP]
GO