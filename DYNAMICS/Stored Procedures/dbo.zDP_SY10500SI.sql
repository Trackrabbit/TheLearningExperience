SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10500SI] (@USERID char(15), @CMPANYID smallint, @SECURITYROLEID char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY10500 (USERID, CMPANYID, SECURITYROLEID) VALUES ( @USERID, @CMPANYID, @SECURITYROLEID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10500SI] TO [DYNGRP]
GO
