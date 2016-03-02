SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_DistLocSegAccount]  @RecordType smallint,  @CallNumber char(11),  @EquipLine integer,  @Line integer,  @LineType char(3),  @DistType smallint,  @AccountIndex integer,  @CMPNTSEQ int = 0  As declare @oldAccountIndex integer declare @CurrencyIndex smallint  select @oldAccountIndex = ACTINDX, @CurrencyIndex=CURRNIDX from SVC00231  where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType  and SVC_Distribution_Type = @DistType and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ if @oldAccountIndex <> @AccountIndex BEGIN  update SVC00231 set ACTINDX = @AccountIndex where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType  and SVC_Distribution_Type = @DistType and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ  exec SVC_Set_Service_HDR_Dist @CallNumber,@RecordType,@DistType,@oldAccountIndex,@AccountIndex,@CurrencyIndex END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_DistLocSegAccount] TO [DYNGRP]
GO
