SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600500SS_1] (@BSSI_Structure_TypeID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Structure_TypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600500 WHERE BSSI_Structure_TypeID = @BSSI_Structure_TypeID ORDER BY BSSI_Structure_TypeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600500SS_1] TO [DYNGRP]
GO
