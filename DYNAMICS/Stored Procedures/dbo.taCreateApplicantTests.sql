SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantTests] @I_vLLASTNAME_I char(21)=null,      @I_vFFIRSTNAME_I char(15)='',      @I_vTESTCODE_I char(7),        @I_vAPPLICANTNUMBER_I numeric(19,5)=null,    @I_vISEQUENCENUMBER_I smallint=null,    @I_vSTRTDATE datetime=null,       @I_vTESTSCORE_I char(21)=null,      @I_vNOTE varchar(8000) = null,       @I_vCHANGEBY_I char(15) = null,      @I_vUpdateIfExists tinyint = 0,      @I_vRequesterTrx smallint = 0,      @I_vUSRDEFND1 char(50) = '',         @I_vUSRDEFND2 char(50) = '',         @I_vUSRDEFND3 char(50) = '',         @I_vUSRDEFND4 varchar(8000) = '',     @I_vUSRDEFND5 varchar(8000) = '',     @O_iErrorState int output,       @oErrString varchar(255) output       with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @exists tinyint,  @count tinyint,          @segcount tinyint,         @ActualDate datetime,  @existingnoteindex int,        @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @nNextNoteIndex int,        @iGetNextNoteIdxErrState int,      @iAddCodeErrState int,  @O_oErrorState int,  @iError int           select  @exists = 0,          @count = 0,  @segcount = 0,  @ActualDate = '',  @existingnoteindex = 0,  @nNextNoteIndex = 0,        @O_iErrorState = 0         if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateApplicantTestsPre  @I_vLLASTNAME_I output,  @I_vFFIRSTNAME_I output,  @I_vTESTCODE_I output,  @I_vAPPLICANTNUMBER_I output,  @I_vISEQUENCENUMBER_I output,  @I_vSTRTDATE output,  @I_vTESTSCORE_I output,  @I_vNOTE output,   @I_vCHANGEBY_I output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 11064    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vFFIRSTNAME_I is NULL or   @I_vTESTCODE_I is NULL or   @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 11065    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @ActualDate = convert(varchar(12),getdate())  if (@I_vLLASTNAME_I is null) and (@I_vAPPLICANTNUMBER_I is null) begin  select @O_iErrorState = 11066     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vTESTCODE_I = '') begin  select @O_iErrorState = 11067     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vTESTCODE_I <> '') begin  if (not exists(select 1 from DYNAMICS..HRTST012 (nolock) where UPPER(TESTCODE_I) = UPPER(@I_vTESTCODE_I)))  begin  select @O_iErrorState = 11068     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  if (@I_vAPPLICANTNUMBER_I is null) begin  if (not exists(select 1 from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I)))  begin  select @O_iErrorState = 11069     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  if (@I_vAPPLICANTNUMBER_I is not null) and (@I_vLLASTNAME_I is not null) begin  if (not exists(select 1 from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I) and APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I))  begin  select @O_iErrorState = 11365     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vAPPLICANTNUMBER_I is not null) and (@I_vLLASTNAME_I is null) begin  select  @I_vLLASTNAME_I = LLASTNAME_I,  @I_vFFIRSTNAME_I = FFIRSTNAME_I  from DYNAMICS..HR2APP12 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I end  if (@I_vLLASTNAME_I is null) begin  select @O_iErrorState = 11364     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @count = count(*) from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I) if (@count > 1) begin   if (@I_vAPPLICANTNUMBER_I is null)   begin  select @O_iErrorState = 11070     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end else begin  if (@I_vAPPLICANTNUMBER_I is null)   begin  select @I_vAPPLICANTNUMBER_I = APPLICANTNUMBER_I from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I)  end end  if (@I_vUpdateIfExists = 0) and (@I_vISEQUENCENUMBER_I is not null)  begin  select @O_iErrorState = 11071     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if (@I_vUpdateIfExists = 0) and (@I_vISEQUENCENUMBER_I is null)  begin   select @I_vISEQUENCENUMBER_I = isnull(max(ISEQUENCENUMBER_I),0) + 1 from DYNAMICS..HR2APP06 (nolock) where @I_vAPPLICANTNUMBER_I = APPLICANTNUMBER_I end  if (@I_vUpdateIfExists = 1)  begin   select @segcount = count(*) from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and TESTCODE_I = @I_vTESTCODE_I  if (@segcount > 1)  begin   if (@I_vISEQUENCENUMBER_I is null)   begin  select @O_iErrorState = 11072     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end   end  else  begin  if (@I_vISEQUENCENUMBER_I is null)   begin  select @I_vISEQUENCENUMBER_I = ISEQUENCENUMBER_I from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I  end  end end   if (@I_vUpdateIfExists = 1)  begin  if (not exists(select 1 from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I))  begin  select @O_iErrorState = 11073     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  else  begin  select @exists = 1  end end  if (@I_vUpdateIfExists = 1)  begin  if (not exists(select 1 from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I and TESTCODE_I = @I_vTESTCODE_I))  begin  select @O_iErrorState = 11084     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  select @existingnoteindex = NOTESINDEX_I from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I  if (@I_vUpdateIfExists = 0) and (@I_vNOTE is not null) begin  select @nNextNoteIndex = NOTESINDEX_I from DYNAMICS..HR3NOTE1 WITH (TABLOCKX HOLDLOCK)  if @nNextNoteIndex = 0   begin   insert into DYNAMICS..HR3NOTE1 values (2)  select @nNextNoteIndex = 1  end  else   begin   update DYNAMICS..HR3NOTE1 set NOTESINDEX_I = @nNextNoteIndex + 1  if @@error <> 0  begin  select @O_iErrorState = 11074    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if (@I_vUpdateIfExists = 1) and (@I_vNOTE is not null) and (@existingnoteindex = 0) begin  select @nNextNoteIndex = NOTESINDEX_I from DYNAMICS..HR3NOTE1 WITH (TABLOCKX HOLDLOCK)  update DYNAMICS..HR3NOTE1 set NOTESINDEX_I = @nNextNoteIndex + 1  if @@error <> 0  begin  select @O_iErrorState = 11075    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  if (@I_vUpdateIfExists = 1) begin  select   @I_vSTRTDATE =   case   when @I_vSTRTDATE is null   then STRTDATE  when @I_vSTRTDATE is not null  then @I_vSTRTDATE  else ''  end,  @I_vTESTSCORE_I =   case  when @I_vTESTSCORE_I is null  then TESTSCORE_I  when @I_vTESTSCORE_I is not null  then @I_vTESTSCORE_I  else ''  end,  @nNextNoteIndex =   case   when @I_vNOTE is null   then NOTESINDEX_I  when @I_vNOTE is not null and @existingnoteindex = 0   then @nNextNoteIndex  when @I_vNOTE is not null and @existingnoteindex = 1   then NOTESINDEX_I  else NOTESINDEX_I  end,  @I_vCHANGEBY_I =   case   when @I_vCHANGEBY_I is null  then CHANGEBY_I  when @I_vCHANGEBY_I is not null  then @I_vCHANGEBY_I  else 'eConnect'  end  from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I end  else  begin    select @I_vSTRTDATE =   case   when @I_vSTRTDATE is null   then ''  else @I_vSTRTDATE  end,  @I_vTESTSCORE_I =   case  when @I_vTESTSCORE_I is null  then ''  else @I_vTESTSCORE_I  end,  @I_vCHANGEBY_I =   case   when @I_vCHANGEBY_I is null  then 'eConnect'  else @I_vCHANGEBY_I  end end  if (@I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1)  begin  select @O_iErrorState = 11076     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@exists = 1 and @I_vUpdateIfExists = 0) begin  select @O_iErrorState = 11077     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 )  begin  select @O_iErrorState = 11078     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  begin  if not exists(select 1 from DYNAMICS..HR2APP06 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I)  begin  insert DYNAMICS..HR2APP06(  APPLICANTNUMBER_I,  ISEQUENCENUMBER_I,  TESTCODE_I,  STRTDATE,  TESTSCORE_I,  NOTESINDEX_I,  CHANGEBY_I,  CHANGEDATE_I,  EXPNDATE  )  select  @I_vAPPLICANTNUMBER_I,     @I_vISEQUENCENUMBER_I,     @I_vTESTCODE_I,       @I_vSTRTDATE,       @I_vTESTSCORE_I,      @nNextNoteIndex,      @I_vCHANGEBY_I,        @ActualDate,        ''          if @@error <> 0  begin  select @O_iErrorState = 11079    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  else  if (@I_vUpdateIfExists = 1) and (@exists = 1)  begin  update DYNAMICS..HR2APP06   set   STRTDATE = @I_vSTRTDATE,  TESTSCORE_I = @I_vTESTSCORE_I,  NOTESINDEX_I = @nNextNoteIndex,  CHANGEBY_I = @I_vCHANGEBY_I,  CHANGEDATE_I = @ActualDate  where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I  if @@error <> 0  begin  select @O_iErrorState = 11080    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  begin  if (@nNextNoteIndex <> 0) and not exists(select 1 from DYNAMICS..HR2NOT01 (nolock) where NOTESINDEX_I = @nNextNoteIndex)  begin  insert into DYNAMICS..HR2NOT01 (  NOTESINDEX_I,  EMPID_I,  APPLICANTNUMBER_I,  CHANGEBY_I,  CHANGEDATE_I,  NOTES32000_I  )  select   @nNextNoteIndex,      '',          @I_vAPPLICANTNUMBER_I,     @I_vCHANGEBY_I,        @ActualDate,       @I_vNOTE        if @@error <> 0  begin  select @O_iErrorState = 11081    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  else   if (@I_vUpdateIfExists = 1) and (@exists = 1)  begin  update DYNAMICS..HR2NOT01   set   CHANGEBY_I = @I_vCHANGEBY_I,  CHANGEDATE_I = @ActualDate,  NOTES32000_I =   case   when @I_vNOTE is null  then NOTES32000_I  else @I_vNOTE  end  where NOTESINDEX_I = @nNextNoteIndex  if @@error <> 0  begin  select @O_iErrorState = 11082    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  end  exec @iStatus = taCreateApplicantTestsPost  @I_vLLASTNAME_I,  @I_vFFIRSTNAME_I,  @I_vTESTCODE_I,  @I_vAPPLICANTNUMBER_I,  @I_vISEQUENCENUMBER_I,  @I_vSTRTDATE,  @I_vTESTSCORE_I,  @I_vNOTE,   @I_vCHANGEBY_I,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 11083    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantTests] TO [DYNGRP]
GO