SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Dist_Get_SEQ_RMA] (@RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @LineType as char(3),  @DistType as smallint,  @NextLine as integer output)  AS  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and LNSEQNBR = @LineNumber and SVC_Distribution_Type = @DistType return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_RMA] TO [DYNGRP]
GO
