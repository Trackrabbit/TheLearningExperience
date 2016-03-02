SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_FAINST01SI] (@CMPANYID smallint, @Major_Version smallint, @Minor_Version smallint, @Build_Number smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FAINST01 (CMPANYID, Major_Version, Minor_Version, Build_Number) VALUES ( @CMPANYID, @Major_Version, @Minor_Version, @Build_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAINST01SI] TO [DYNGRP]
GO
