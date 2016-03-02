SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VL_3] (@aaLinkType_RS smallint, @aaDimID_RS int, @aaMstrIDDescr_RS char(65), @aaLinkType_RE smallint, @aaDimID_RE int, @aaMstrIDDescr_RE char(65)) AS  set nocount on IF @aaLinkType_RS IS NULL BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V ORDER BY aaLinkType DESC, aaDimID DESC, aaMstrIDDescr DESC, DEX_ROW_ID DESC END ELSE IF @aaLinkType_RS = @aaLinkType_RE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType = @aaLinkType_RS AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMstrIDDescr BETWEEN @aaMstrIDDescr_RS AND @aaMstrIDDescr_RE ORDER BY aaLinkType DESC, aaDimID DESC, aaMstrIDDescr DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType BETWEEN @aaLinkType_RS AND @aaLinkType_RE AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMstrIDDescr BETWEEN @aaMstrIDDescr_RS AND @aaMstrIDDescr_RE ORDER BY aaLinkType DESC, aaDimID DESC, aaMstrIDDescr DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VL_3] TO [DYNGRP]
GO
