SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500400SS_2] (@BSSI_CategoryDescription char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_CategoryID, BSSI_CategoryDescription, NOTEINDX, DEX_ROW_ID FROM .B0500400 WHERE BSSI_CategoryDescription = @BSSI_CategoryDescription ORDER BY BSSI_CategoryDescription ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500400SS_2] TO [DYNGRP]
GO
