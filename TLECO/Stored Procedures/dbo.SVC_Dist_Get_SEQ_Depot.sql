SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Dist_Get_SEQ_Depot] (@Number as char(11),  @RecordType as smallint,  @Line as integer,  @Type as char(3),  @DistType as smallint,  @NextLine as integer output)  AS  if @Line = 0   select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC06130  where WORKORDNUM = @Number and WORECTYPE=@RecordType and SVC_Distribution_Type = @DistType else  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC06131  where WORKORDNUM = @Number and WORECTYPE=@RecordType and LNITMSEQ =@Line and LINITMTYP = @Type  and SVC_Distribution_Type = @DistType return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_Depot] TO [DYNGRP]
GO
