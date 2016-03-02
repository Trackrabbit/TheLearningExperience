SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RTV_GetLinesCount] (  @RTV char(15),  @RTVStatus smallint,  @UserID char(15),  @LineCount int output ) as if @RTVStatus = 2   select @LineCount = count(*) from SVC05615 where USERID = @UserID and RTV_Number = @RTV and MKDTOPST =0 else if @RTVStatus = 3   select @LineCount = count(*) from SVC05625 where USERID = @UserID and RTV_Number = @RTV and MKDTOPST =0 else if @RTVStatus = 5   select @LineCount = count(*) from SVC05635 where USERID = @UserID and RTV_Number = @RTV and MKDTOPST =0   select @LineCount = isnull(@LineCount,0) return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_GetLinesCount] TO [DYNGRP]
GO
