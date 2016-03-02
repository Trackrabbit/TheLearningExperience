SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_MS273534_iu]
  @batchNumber char(15), @batchSource char(15) 
 AS 
 BEGIN 
   INSERT INTO MS273534 (
      BACHNUMB, BCHSOURC )
   VALUES 
   (@batchNumber, @batchSource) 
   
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_MS273534_iu] TO [DYNGRP]
GO
