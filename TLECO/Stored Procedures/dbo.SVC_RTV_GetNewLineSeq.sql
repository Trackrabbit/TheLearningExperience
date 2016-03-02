SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RTV_GetNewLineSeq] (  @RTV char(15),  @LineNumber numeric(19,5) output ) as   select @LineNumber =  isnull(Max(RTV_Line),0) + 100 from SVC05601 where RTV_Number = @RTV  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_GetNewLineSeq] TO [DYNGRP]
GO
