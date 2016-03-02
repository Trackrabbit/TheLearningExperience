SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Dist_Get_SEQ_RTV] (@RTVNumber as char(15),  @RTVLine as numeric(19,5),  @DistType as smallint,  @NextLine as integer output)  AS  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC05630  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and SVC_Distribution_Type = @DistType return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_RTV] TO [DYNGRP]
GO
