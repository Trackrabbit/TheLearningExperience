SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_MS273534_d]
  @batchNumber char(15), @batchSource char(15) 
 AS 
 BEGIN 
   DELETE FROM MS273534 
     WHERE BACHNUMB = @batchNumber and BCHSOURC = @batchSource 
   
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_MS273534_d] TO [DYNGRP]
GO
