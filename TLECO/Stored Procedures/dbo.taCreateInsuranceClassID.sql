SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateInsuranceClassID] @I_vINSCLASSID char(15),    @I_vINSCLASSDESC char(30) = '',   @I_vINFLATIONRATEPCT numeric(19,5) = 0,  @I_vDEPRRATEPCT numeric(19,5) = 0,  @I_vUSRDEFND1   char(50) = '',       @I_vUSRDEFND2   char(50) = '',       @I_vUSRDEFND3   char(50) = '',       @I_vUSRDEFND4   varchar(8000) = '',  @I_vUSRDEFND5   varchar(8000) = '',  @O_iErrorState   int output,   @oErrString   varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @INSCLASSINDX int,    @NOTEINDX numeric(19,5),  @CMPANYID smallint,  @iGetNextNoteIdxErrState int,  @iAddCodeErrState int,    @O_iNumErrorState int,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @iError int     select  @INSCLASSINDX = 0,    @CMPANYID = 0,  @iStatus = 0,   @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateInsuranceClassIDPre  @I_vINSCLASSID output,  @I_vINSCLASSDESC output,  @I_vINFLATIONRATEPCT output,  @I_vDEPRRATEPCT output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3130    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if(  @I_vINSCLASSID is NULL or  @I_vINSCLASSDESC is NULL or  @I_vINFLATIONRATEPCT is NULL or  @I_vDEPRRATEPCT is NULL or  @I_vUSRDEFND1 is NULL or   @I_vUSRDEFND2 is NULL or   @I_vUSRDEFND3 is NULL or   @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   )  begin  select @O_iErrorState = 3131    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vINSCLASSID = UPPER(@I_vINSCLASSID)  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  if (@INSCLASSINDX = 0)   begin  exec @iStatus = taGetInsuranceClassIndex  @I_tInc_Dec = 1,   @O_vInsuranceClassIndex = @INSCLASSINDX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 5356    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 3132   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vINSCLASSID = '' ) begin  select @O_iErrorState = 3133    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vINFLATIONRATEPCT < 0 ) begin  select @O_iErrorState = 3134     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vDEPRRATEPCT < 0 ) begin  select @O_iErrorState = 3135     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vINFLATIONRATEPCT > 327.67 ) begin  select @O_iErrorState = 3136     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vDEPRRATEPCT > 327.67 ) begin  select @O_iErrorState = 3137     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState = 0) begin  if not exists( select 1 from FA41200 (nolock) where  INSCLASSID = @I_vINSCLASSID )   begin  insert into FA41200 ( INSCLASSINDX,  INSCLASSID,  INSCLASSDESC,  INFLATIONRATEPCT,  DEPRRATEPCT,  NOTEINDX,  LASTMNTDDATE,  LASTMNTDTIME,  LASTMNTDUSERID  )  select   @INSCLASSINDX,      @I_vINSCLASSID,      @I_vINSCLASSDESC,     @I_vINFLATIONRATEPCT * 100,     @I_vDEPRRATEPCT * 100,      @NOTEINDX,      convert(varchar(12),getdate()),    '',       ''       if @@error <> 0  begin  select @O_iErrorState = 3138    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  select @O_iErrorState = 3139    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  exec @iStatus = taCreateInsuranceClassIDPost  @I_vINSCLASSID,  @I_vINSCLASSDESC,  @I_vINFLATIONRATEPCT,  @I_vDEPRRATEPCT,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3140    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateInsuranceClassID] TO [DYNGRP]
GO
