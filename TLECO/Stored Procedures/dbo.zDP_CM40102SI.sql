SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM40102SI] (@SETUPKEY smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM40102 (SETUPKEY) VALUES ( @SETUPKEY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM40102SI] TO [DYNGRP]
GO