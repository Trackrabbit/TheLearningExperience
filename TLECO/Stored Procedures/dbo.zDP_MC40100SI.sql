SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40100SI] (@RATETPID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC40100 (RATETPID) VALUES ( @RATETPID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40100SI] TO [DYNGRP]
GO
