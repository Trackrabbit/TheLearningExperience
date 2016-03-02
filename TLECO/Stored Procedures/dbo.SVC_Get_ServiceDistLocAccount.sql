SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_ServiceDistLocAccount]  @RecordType smallint,  @CallNumber char(11),  @EquipLine integer,  @Line integer,  @LineType char(3),  @DistType smallint,  @AccountIndex integer OUTPUT,  @Location char(10) OUTPUT,  @CMPNTSEQ int = 0 As select @AccountIndex = ACTINDX from SVC00231 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType  and SVC_Distribution_Type = @DistType and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ select @Location = LOCNCODE from SVC00203  where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType and CMPNTSEQ = @CMPNTSEQ  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ServiceDistLocAccount] TO [DYNGRP]
GO
