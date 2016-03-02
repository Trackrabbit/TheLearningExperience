SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VSS_2] (@aaLinkType smallint, @aaDimID int, @aaMasterID char(129)) AS  set nocount on SELECT TOP 1  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType = @aaLinkType AND aaDimID = @aaDimID AND aaMasterID = @aaMasterID ORDER BY aaLinkType ASC, aaDimID ASC, aaMasterID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VSS_2] TO [DYNGRP]
GO
