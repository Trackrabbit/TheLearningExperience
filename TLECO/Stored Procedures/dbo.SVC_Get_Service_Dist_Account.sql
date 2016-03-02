SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_Service_Dist_Account]  @CallNumber char(11),  @RecordType smallint,  @EquipLine integer,  @Line integer,  @LineType char(3),  @DistType smallint,  @AccountIndex integer OUTPUT,  @CMPNTSEQ int = 0   AS  select @AccountIndex = ACTINDX from SVC00231 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Distribution_Type = @DistType and POSTED = 0 update SVC00231 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType and CMPNTSEQ = @CMPNTSEQ  and SVC_Distribution_Type = @DistType and POSTED = 0 and ACTINDX = @AccountIndex return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Service_Dist_Account] TO [DYNGRP]
GO
