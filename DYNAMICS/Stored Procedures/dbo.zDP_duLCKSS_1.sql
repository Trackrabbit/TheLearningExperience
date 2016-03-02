SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_duLCKSS_1] (@companyID smallint, @INTERID char(5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  companyID, INTERID, duWorkstationID, DEX_ROW_ID FROM .duLCK WHERE companyID = @companyID AND INTERID = @INTERID ORDER BY companyID ASC, INTERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_duLCKSS_1] TO [DYNGRP]
GO
