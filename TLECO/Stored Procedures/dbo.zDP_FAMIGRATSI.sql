SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FAMIGRATSI] (@INDEX1 smallint, @Major_Version smallint, @Minor_Version smallint, @Build_Number smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FAMIGRAT (INDEX1, Major_Version, Minor_Version, Build_Number) VALUES ( @INDEX1, @Major_Version, @Minor_Version, @Build_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAMIGRATSI] TO [DYNGRP]
GO
