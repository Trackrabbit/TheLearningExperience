SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Dist_Get_SEQ_Service] (@CallNumber as char(11),  @RecordType as smallint,  @EquipLine as integer,  @Line as integer,  @Type as char(3),  @DistType as smallint,  @NextLine as integer output)  AS if @Line = 0   select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC00230  where CALLNBR = @CallNumber and SRVRECTYPE=@RecordType and SVC_Distribution_Type = @DistType else  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC00231  where CALLNBR = @CallNumber and SRVRECTYPE=@RecordType and EQPLINE=@EquipLine and LNITMSEQ =@Line and LINITMTYP = @Type and SVC_Distribution_Type = @DistType return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_Service] TO [DYNGRP]
GO
