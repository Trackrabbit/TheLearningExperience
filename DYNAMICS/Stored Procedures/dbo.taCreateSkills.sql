SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSkills] @I_vSKILLTITLE_I char(31),       @I_vCOMPENSATIONVALUE_I numeric(19,5) = null,  @I_vCOMPENSATIONPERIOD_I smallint = null,   @I_vUpdateIfExists tinyint = 1,      @I_vRequesterTrx smallint = 0,      @I_vUSRDEFND1 char(50) = '',         @I_vUSRDEFND2 char(50) = '',         @I_vUSRDEFND3 char(50) = '',         @I_vUSRDEFND4 varchar(8000) = '',     @I_vUSRDEFND5 varchar(8000) = '',     @O_iErrorState int output,       @oErrString varchar(255) output       with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @SKILLNUMBER_I smallint,     @exists tinyint,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @nNextNoteIndex int,      @iGetNextNoteIdxErrState int,    @iAddCodeErrState int,  @O_oErrorState int,  @iError int         select  @exists = 0,  @O_iErrorState = 0       if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateSkillsPre  @I_vSKILLTITLE_I output,  @I_vCOMPENSATIONVALUE_I output,  @I_vCOMPENSATIONPERIOD_I output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 8702    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vSKILLTITLE_I is NULL or  @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 8703    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (exists(select 1 from DYNAMICS..HR2SKL01 (nolock) where SKILLTITLE_I = @I_vSKILLTITLE_I)) begin  select @SKILLNUMBER_I = SKILLNUMBER_I from DYNAMICS..HR2SKL01 (nolock) where SKILLTITLE_I = @I_vSKILLTITLE_I  select @exists = 1 end  else  begin  select @SKILLNUMBER_I = isnull(max(SKILLNUMBER_I),0) + 1 from DYNAMICS..HR2SKL01 (nolock)  end  if (@I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 2)  begin  select @O_iErrorState = 8708     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@exists = 1) begin  if (@I_vUpdateIfExists = 0)  begin  select @O_iErrorState = 8709     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  else  begin  if (@I_vUpdateIfExists = 2)  begin  return (@O_iErrorState)  end  end end else begin  if (@I_vUpdateIfExists = 2)  begin  select @I_vUpdateIfExists = 0  end end  if (@I_vSKILLTITLE_I = '') begin  select @O_iErrorState = 8704    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vCOMPENSATIONVALUE_I < 0) begin  select @O_iErrorState = 8705     exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vCOMPENSATIONVALUE_I > 999999999.99) begin  select @O_iErrorState = 8706     exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vCOMPENSATIONPERIOD_I < 0 or @I_vCOMPENSATIONPERIOD_I > 9) begin  select @O_iErrorState = 8707     exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 )  begin  select @O_iErrorState = 8711     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  begin  if not exists(select 1 from DYNAMICS..HR2SKL01 (nolock) where SKILLTITLE_I = @I_vSKILLTITLE_I)  begin  insert DYNAMICS..HR2SKL01(  SKILLNUMBER_I,  SKILLTITLE_I,  COMPENSATIONVALUE_I,  COMPENSATIONPERIOD_I  )  select  @SKILLNUMBER_I,     @I_vSKILLTITLE_I,    case        when @I_vCOMPENSATIONVALUE_I is null  then 0  else @I_vCOMPENSATIONVALUE_I  end,   case       when @I_vCOMPENSATIONPERIOD_I is null  then 0   else @I_vCOMPENSATIONPERIOD_I  end   if @@error <> 0  begin  select @O_iErrorState = 8712    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  else  if (@I_vUpdateIfExists = 1) and (@exists = 1)  begin  update DYNAMICS..HR2SKL01   set   COMPENSATIONVALUE_I =   case  when @I_vCOMPENSATIONVALUE_I is null   then COMPENSATIONVALUE_I  else @I_vCOMPENSATIONVALUE_I  end,  COMPENSATIONPERIOD_I =   case   when @I_vCOMPENSATIONPERIOD_I is null  then COMPENSATIONPERIOD_I  else @I_vCOMPENSATIONPERIOD_I  end  where  SKILLTITLE_I = @I_vSKILLTITLE_I  if @@error <> 0  begin  select @O_iErrorState = 8713    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  exec @iStatus = taCreateSkillsPost  @I_vSKILLTITLE_I,  @I_vCOMPENSATIONVALUE_I,  @I_vCOMPENSATIONPERIOD_I,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 8714    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSkills] TO [DYNGRP]
GO