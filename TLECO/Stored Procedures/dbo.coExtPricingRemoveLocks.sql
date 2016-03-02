SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[coExtPricingRemoveLocks]  @userID char(16)  AS  delete from SY05500 where USERID = @userID    
GO
GRANT EXECUTE ON  [dbo].[coExtPricingRemoveLocks] TO [DYNGRP]
GO
