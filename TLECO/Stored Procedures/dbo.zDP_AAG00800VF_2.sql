SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VF_2] (@aaLinkType_RS smallint, @aaDimID_RS int, @aaMasterID_RS char(129), @aaLinkType_RE smallint, @aaDimID_RE int, @aaMasterID_RE char(129)) AS  set nocount on IF @aaLinkType_RS IS NULL BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V ORDER BY aaLinkType ASC, aaDimID ASC, aaMasterID ASC, DEX_ROW_ID ASC END ELSE IF @aaLinkType_RS = @aaLinkType_RE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType = @aaLinkType_RS AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMasterID BETWEEN @aaMasterID_RS AND @aaMasterID_RE ORDER BY aaLinkType ASC, aaDimID ASC, aaMasterID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID FROM .AAG00800V WHERE aaLinkType BETWEEN @aaLinkType_RS AND @aaLinkType_RE AND aaDimID BETWEEN @aaDimID_RS AND @aaDimID_RE AND aaMasterID BETWEEN @aaMasterID_RS AND @aaMasterID_RE ORDER BY aaLinkType ASC, aaDimID ASC, aaMasterID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VF_2] TO [DYNGRP]
GO
