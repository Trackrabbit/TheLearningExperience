SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[SVC_RMA_GetLinesCount] (  @RMA char(15),  @RMAStatus smallint,  @UserID char(15),  @LineCount int output ) as if @RMAStatus = 0   select @LineCount = count(*) from SVC05015 where USERID = @UserID and RETDOCID = @RMA and MKDTOPST =0 else  select @LineCount = count(*) from SVC05115 where USERID = @UserID and RETDOCID = @RMA and MKDTOPST =0   select @LineCount = isnull(@LineCount,0) return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_GetLinesCount] TO [DYNGRP]
GO
