SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FAMIGRATSS_1] (@INDEX1 smallint) AS  set nocount on SELECT TOP 1  INDEX1, Major_Version, Minor_Version, Build_Number, DEX_ROW_ID FROM .FAMIGRAT WHERE INDEX1 = @INDEX1 ORDER BY INDEX1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAMIGRATSS_1] TO [DYNGRP]
GO
