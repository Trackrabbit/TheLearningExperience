SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Dist_Get_SEQ_Transfer] (@Number as char(15),  @Line as integer,  @NextLine as integer output)  AS  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC00731  where ORDDOCID = @Number and LNITMSEQ =@Line  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_Transfer] TO [DYNGRP]
GO
