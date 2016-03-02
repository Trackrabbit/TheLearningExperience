SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBenefitBasedOnPayDedCodes] @I_vBENEFIT char(6),    @I_vBORCDTYP smallint,    @I_vBSDONCDE char(6),    @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',       @I_vUSRDEFND2 char(50) = '',       @I_vUSRDEFND3 char(50) = '',       @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @BSDORCDS smallint,      @iStatus int,  @nNextNoteIndex int,     @iGetNextNoteIdxErrState int,    @iAddCodeErrState int  select  @BSDORCDS = 0,       @O_iErrorState = 0     if (@oErrString is NULL) begin  select @oErrString = '' end  if (  @I_vBENEFIT is NULL or  @I_vBORCDTYP is NULL or  @I_vBSDONCDE is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1  is NULL or  @I_vUSRDEFND2  is NULL or  @I_vUSRDEFND3  is NULL or  @I_vUSRDEFND4  is NULL or  @I_vUSRDEFND5  is NULL  ) begin  select @O_iErrorState = 3644    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @I_vBENEFIT = UPPER(@I_vBENEFIT),  @I_vBSDONCDE = UPPER(@I_vBSDONCDE)  if ( @I_vBENEFIT = '' ) begin  select @O_iErrorState = 3645    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBORCDTYP < 1 or @I_vBORCDTYP > 2 )  begin  select @O_iErrorState = 3646    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBSDONCDE = '' ) begin  select @O_iErrorState = 3647    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBORCDTYP = 1 and @I_vBSDONCDE <> '' ) begin  if (not exists (select 1 from UPR40600 (nolock) where PAYRCORD = @I_vBSDONCDE ))  begin  select @O_iErrorState = 3648    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vBORCDTYP = 2 and @I_vBSDONCDE <> '' ) begin  if (not exists (select 1 from UPR40900 (nolock) where DEDUCTON = @I_vBSDONCDE ))  begin  select @O_iErrorState = 3649    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vBORCDTYP = 2 and @I_vBSDONCDE <> '' ) begin  if (exists (select 1 from UPR40801 (nolock) where BENEFIT = @I_vBENEFIT and BORCDTYP = 2))  begin  select @O_iErrorState = 4318    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vBENEFIT <> '' ) begin  if (not exists (select 1 from UPR40800 (nolock) where BENEFIT = @I_vBENEFIT))  begin  select @O_iErrorState = 3650    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vBENEFIT <> '' and @I_vBSDONCDE <> '' ) begin  select @BSDORCDS = BSDORCDS from UPR40800 (nolock) where BENEFIT = @I_vBENEFIT  if ( @BSDORCDS = 0 )  begin  select @O_iErrorState = 4315    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if @O_iErrorState <> 0  return (@O_iErrorState)  if not exists( select 1 from UPR40801 (nolock) where BENEFIT = @I_vBENEFIT and BSDONCDE = @I_vBSDONCDE ) begin  insert UPR40801(  BENEFIT,  BORCDTYP,  BSDONCDE  )  select  @I_vBENEFIT,   @I_vBORCDTYP,   @I_vBSDONCDE   if @@error <> 0  begin  select @O_iErrorState = 4316    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end else begin  select @O_iErrorState = 4317    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBenefitBasedOnPayDedCodes] TO [DYNGRP]
GO