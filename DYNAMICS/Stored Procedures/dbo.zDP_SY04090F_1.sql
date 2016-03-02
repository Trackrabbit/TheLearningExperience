SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04090F_1] (@SocialNetworkID_RS smallint, @SocialNetworkID_RE smallint) AS  set nocount on IF @SocialNetworkID_RS IS NULL BEGIN SELECT TOP 25  SocialNetworkID, SocialNetworkName, SocialNetworkAccessUrl, SocialNetworkLogo, SocialNetworkStatus, DEX_ROW_ID FROM .SY04090 ORDER BY SocialNetworkID ASC END ELSE IF @SocialNetworkID_RS = @SocialNetworkID_RE BEGIN SELECT TOP 25  SocialNetworkID, SocialNetworkName, SocialNetworkAccessUrl, SocialNetworkLogo, SocialNetworkStatus, DEX_ROW_ID FROM .SY04090 WHERE SocialNetworkID = @SocialNetworkID_RS ORDER BY SocialNetworkID ASC END ELSE BEGIN SELECT TOP 25  SocialNetworkID, SocialNetworkName, SocialNetworkAccessUrl, SocialNetworkLogo, SocialNetworkStatus, DEX_ROW_ID FROM .SY04090 WHERE SocialNetworkID BETWEEN @SocialNetworkID_RS AND @SocialNetworkID_RE ORDER BY SocialNetworkID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04090F_1] TO [DYNGRP]
GO
