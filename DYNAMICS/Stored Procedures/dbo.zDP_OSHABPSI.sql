SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_OSHABPSI] (@INJURYBODYPART_I char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .OSHABP (INJURYBODYPART_I) VALUES ( @INJURYBODYPART_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OSHABPSI] TO [DYNGRP]
GO
