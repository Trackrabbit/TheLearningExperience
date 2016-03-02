SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VF_1] (@aaLinkType_RS smallint, @aaDimID_RS int, @aaMstrID_RS int, @aaLinkType_RE smallint, @aaDimID_RE int, @aaMstrID_RE int) AS  set nocount on IF @aaLinkType_RS IS NULL BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V ORDER BY aaLinkType ASC, aaDimID ASC, aaMstrID ASC, DEX_ROW_ID ASC END ELSE IF @aaLinkType_RS = @aaLinkType_RE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType = @aaLinkType_RS AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMstrID BETWEEN @aaMstrID_RS AND @aaMstrID_RE ORDER BY aaLinkType ASC, aaDimID ASC, aaMstrID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType BETWEEN @aaLinkType_RS AND @aaLinkType_RE AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMstrID BETWEEN @aaMstrID_RS AND @aaMstrID_RE ORDER BY aaLinkType ASC, aaDimID ASC, aaMstrID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VF_1] TO [DYNGRP]
GO
