SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreatePriceGroup]  @I_vPriceGroup  char(10),    @I_vDSCRIPTN  char(30) = '',   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',       @I_vUSRDEFND2  char(50) = '',       @I_vUSRDEFND3  char(50) = '',       @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @NOTEINDX numeric(19,5),  @CMPANYID smallint,  @iGetNextNoteIdxErrState int,  @iAddCodeErrState int,    @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @iError int     select  @CMPANYID = 0,  @iStatus = 0,   @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taIVCreatePriceGroupPre  @I_vPriceGroup output,  @I_vDSCRIPTN output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 4736    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vPriceGroup is NULL or  @I_vDSCRIPTN is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or   @I_vUSRDEFND2 is NULL or   @I_vUSRDEFND3 is NULL or   @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 4737    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vPriceGroup = UPPER(@I_vPriceGroup)  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 4738   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vPriceGroup = '' ) begin  select @O_iErrorState = 4739    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 ) begin  select @O_iErrorState = 4740     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@O_iErrorState = 0) begin  if not exists( select 1 from IV40900 (nolock) where  PriceGroup = @I_vPriceGroup )   begin  insert into IV40900 ( PriceGroup,  DSCRIPTN,  CREATDDT,  MODIFDT,  NOTEINDX  )  select   @I_vPriceGroup,     @I_vDSCRIPTN,     convert(varchar(12),getdate()),   convert(varchar(12),getdate()),   @NOTEINDX  if @@error <> 0  begin  select @O_iErrorState = 4741    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  select @O_iErrorState = 4742    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taIVCreatePriceGroupPost  @I_vPriceGroup,  @I_vDSCRIPTN,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 4743    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreatePriceGroup] TO [DYNGRP]
GO