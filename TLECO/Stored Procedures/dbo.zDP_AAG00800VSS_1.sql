SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VSS_1] (@aaLinkType smallint, @aaDimID int, @aaMstrID int) AS  set nocount on SELECT TOP 1  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType = @aaLinkType AND aaDimID = @aaDimID AND aaMstrID = @aaMstrID ORDER BY aaLinkType ASC, aaDimID ASC, aaMstrID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VSS_1] TO [DYNGRP]
GO
