SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601100SS_1] (@BSSI_TenantTypeID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_TenantTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601100 WHERE BSSI_TenantTypeID = @BSSI_TenantTypeID ORDER BY BSSI_TenantTypeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601100SS_1] TO [DYNGRP]
GO
