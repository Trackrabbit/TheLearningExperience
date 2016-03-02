SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RMA_GetNewLineSeq] (  @RMA char(15),  @LineNumber numeric(19,5) output ) as   select @LineNumber =  isnull(Max(LNSEQNBR),0) + 100 from SVC05200 where RETDOCID = @RMA   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_GetNewLineSeq] TO [DYNGRP]
GO
