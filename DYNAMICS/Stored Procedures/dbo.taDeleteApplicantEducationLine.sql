SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taDeleteApplicantEducationLine]  @I_vLLASTNAME_I char(21)=null,      @I_vFFIRSTNAME_I char(15)='',      @I_vAPPLICANTNUMBER_I numeric(19,5)=null,    @I_vUNIVERSITY char(31)=null,      @I_vISEQUENCENUMBER_I smallint=null,    @I_vRequesterTrx smallint = 0,      @I_vUSRDEFND1 char(50) = '',      @I_vUSRDEFND2 char(50) = '',      @I_vUSRDEFND3 char(50) = '',      @I_vUSRDEFND4 varchar(8000) = '',     @I_vUSRDEFND5 varchar(8000) = '',     @O_iErrorState int output, @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @O_oErrorState int,  @count smallint,  @universitycount smallint,  @NOTEINDX numeric(19,5),  @iCustomState int,  @iCustomErrString varchar(255),  @iStatus int,      @iError int       select   @iCustomState = 0,  @count = 0,  @universitycount = 0,  @NOTEINDX = 0,  @O_oErrorState = 0,  @iCustomErrString = '',  @O_iErrorState = 0  if (@oErrString is null) begin  select @oErrString = '' end  exec @iStatus = taDeleteApplicantEducationLinePre  @I_vLLASTNAME_I output,  @I_vFFIRSTNAME_I output,  @I_vAPPLICANTNUMBER_I output,  @I_vUNIVERSITY output,  @I_vISEQUENCENUMBER_I output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState  = @iCustomState output,  @oErrString = @iCustomErrString output  select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @O_iErrorState = 11023    exec @iStatus = taUpdateString  @O_iErrorState,  @iCustomErrString,  @oErrString output,  @O_oErrorState output end  if ( @I_vFFIRSTNAME_I is null or   @I_vRequesterTrx is null  ) begin  select @O_iErrorState = 11024    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if @I_vUNIVERSITY is null begin   select @I_vUNIVERSITY = '' end  if (@I_vLLASTNAME_I is null) and (@I_vAPPLICANTNUMBER_I is null) begin  select @O_iErrorState = 11025     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vAPPLICANTNUMBER_I is null) begin  if (not exists(select 1 from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I)))  begin  select @O_iErrorState = 11026     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vAPPLICANTNUMBER_I is not null) and (@I_vLLASTNAME_I is not null) begin  if (not exists(select 1 from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I) and APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I))  begin  select @O_iErrorState = 11027     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vAPPLICANTNUMBER_I is not null) and (@I_vLLASTNAME_I is null) begin  select  @I_vLLASTNAME_I = LLASTNAME_I,  @I_vFFIRSTNAME_I = FFIRSTNAME_I  from DYNAMICS..HR2APP12 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I end  if (@I_vLLASTNAME_I is null) begin  select @O_iErrorState = 11358     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @count = count(*) from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I) if (@count > 1) begin   if (@I_vAPPLICANTNUMBER_I is null)   begin  select @O_iErrorState = 11029     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end else begin  if (@I_vAPPLICANTNUMBER_I is null)   begin  select @I_vAPPLICANTNUMBER_I = APPLICANTNUMBER_I from DYNAMICS..HR2APP12 (nolock) where UPPER(FFIRSTNAME_I) = UPPER(@I_vFFIRSTNAME_I) and UPPER(LLASTNAME_I) = UPPER(@I_vLLASTNAME_I)  end end  if (@I_vISEQUENCENUMBER_I is not null)  begin  if (not exists(select 1 from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I))  begin  select @O_iErrorState = 11028     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end   if (@I_vISEQUENCENUMBER_I is not null) and (@I_vUNIVERSITY <> '') begin  if (not exists(select 1 from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and UNIVERSITY = @I_vUNIVERSITY and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I))  begin  select @O_iErrorState = 11035     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vISEQUENCENUMBER_I is null) and (@I_vAPPLICANTNUMBER_I is not null) and (@I_vUNIVERSITY <> '') begin   if (not exists(select 1 from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and UNIVERSITY = @I_vUNIVERSITY))  begin  select @O_iErrorState = 20152     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  select @universitycount = count(*) from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and UPPER(UNIVERSITY) = UPPER(@I_vUNIVERSITY) if (@universitycount > 1) begin   if (@I_vISEQUENCENUMBER_I is null)   begin  select @O_iErrorState = 11030     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end else begin  if (@I_vISEQUENCENUMBER_I is null)   begin  select @I_vISEQUENCENUMBER_I = ISEQUENCENUMBER_I from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and UPPER(UNIVERSITY) = UPPER(@I_vUNIVERSITY)  end end   select @NOTEINDX = isnull(NOTESINDEX_I,0) from DYNAMICS..HR2APP04 (nolock) where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I  if (@I_vRequesterTrx not in (0,1)) begin  select @O_iErrorState = 11031     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  delete DYNAMICS..HR2APP04 where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and ISEQUENCENUMBER_I = @I_vISEQUENCENUMBER_I if (@@error <> 0) begin  select @O_iErrorState = 11032    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@NOTEINDX <> 0) begin   delete DYNAMICS..HR2NOT01 where APPLICANTNUMBER_I = @I_vAPPLICANTNUMBER_I and NOTESINDEX_I = @NOTEINDX  if (@@error <> 0)  begin  select @O_iErrorState = 11033    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taDeleteApplicantEducationLinePost  @I_vLLASTNAME_I,  @I_vFFIRSTNAME_I,  @I_vAPPLICANTNUMBER_I,  @I_vUNIVERSITY,  @I_vISEQUENCENUMBER_I,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState  = @iCustomState output,  @oErrString = @iCustomErrString output  select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @O_iErrorState = 11034    exec @iStatus = taUpdateString  @O_iErrorState,  @iCustomErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taDeleteApplicantEducationLine] TO [DYNGRP]
GO
