SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100180SS_1] (@BSSI_BundleID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_BundleID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B7100180 WHERE BSSI_BundleID = @BSSI_BundleID ORDER BY BSSI_BundleID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100180SS_1] TO [DYNGRP]
GO
