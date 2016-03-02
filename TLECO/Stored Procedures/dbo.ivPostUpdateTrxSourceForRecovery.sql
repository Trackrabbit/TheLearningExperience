SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[ivPostUpdateTrxSourceForRecovery] (@OldTRXSORCE char(13), @NewTRXSORCE char(13), @IVDocType smallint=NULL, @IVDocNumber char(21)=NULL, @LineSEQNumber numeric(19,5)=NULL, @iErrorState int=NULL output)  as begin  SET nocount on  SELECT @iErrorState = 0 IF  @OldTRXSORCE=NULL or  @NewTRXSORCE=NULL or  @IVDocType=NULL or   @IVDocNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  UPDATE IV30400  SET TRXSORCE = @NewTRXSORCE  WHERE TRXSORCE = @OldTRXSORCE and IVDOCTYP = @IVDocType and DOCNUMBR = @IVDocNumber and LNSEQNBR = @LineSEQNumber end    
GO
GRANT EXECUTE ON  [dbo].[ivPostUpdateTrxSourceForRecovery] TO [DYNGRP]
GO
