SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Depot_DistLine_Account]  @WONumber char(11),  @RecordType smallint,  @Line as integer,  @Type as char(3),  @DistType smallint,  @AccountIndex integer OUTPUT,  @CMPNTSEQ int = 0   AS declare @Sequence integer  select @AccountIndex = ACTINDX, @Sequence = SEQNUMBR from SVC06131 where WORECTYPE = @RecordType  and WORKORDNUM = @WONumber and SVC_Distribution_Type = @DistType and POSTED = 0  and CMPNTSEQ = @CMPNTSEQ and LNITMSEQ =@Line and LINITMTYP = @Type update SVC06131 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber   and LNITMSEQ =@Line and LINITMTYP = @Type and SEQNUMBR = @Sequence  and CMPNTSEQ = @CMPNTSEQ and SVC_Distribution_Type = @DistType and POSTED = 0   return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Depot_DistLine_Account] TO [DYNGRP]
GO
