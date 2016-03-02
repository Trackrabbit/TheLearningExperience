SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Function [dbo].[aagIsPostToGLForBatch]( @iBatchNumber varchar(15) = '',  @iBatchSource varchar(15) = ''  ) RETURNS tinyint  AS  Begin Declare @PostToGL tinyint   Select @PostToGL = POSTTOGL from SY00500 where BACHNUMB = @iBatchNumber and BCHSOURC = @iBatchSource  RETURN @PostToGL End    
GO
GRANT EXECUTE ON  [dbo].[aagIsPostToGLForBatch] TO [DYNGRP]
GO
