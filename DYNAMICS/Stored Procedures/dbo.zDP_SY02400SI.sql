SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02400SI] (@DMYPWDID smallint, @PASSWORD binary(16), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY02400 (DMYPWDID, PASSWORD) VALUES ( @DMYPWDID, @PASSWORD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02400SI] TO [DYNGRP]
GO
