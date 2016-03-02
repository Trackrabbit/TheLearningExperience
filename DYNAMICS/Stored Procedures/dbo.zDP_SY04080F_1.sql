SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04080F_1] (@CardType_RS smallint, @CardID_RS char(61), @SocialNetworkID_RS smallint, @CardType_RE smallint, @CardID_RE char(61), @SocialNetworkID_RE smallint) AS  set nocount on IF @CardType_RS IS NULL BEGIN SELECT TOP 25  CardType, CardID, SocialNetworkID, MemberID, DEX_ROW_ID FROM .SY04080 ORDER BY CardType ASC, CardID ASC, SocialNetworkID ASC END ELSE IF @CardType_RS = @CardType_RE BEGIN SELECT TOP 25  CardType, CardID, SocialNetworkID, MemberID, DEX_ROW_ID FROM .SY04080 WHERE CardType = @CardType_RS AND CardID BETWEEN @CardID_RS AND @CardID_RE AND SocialNetworkID BETWEEN @SocialNetworkID_RS AND @SocialNetworkID_RE ORDER BY CardType ASC, CardID ASC, SocialNetworkID ASC END ELSE BEGIN SELECT TOP 25  CardType, CardID, SocialNetworkID, MemberID, DEX_ROW_ID FROM .SY04080 WHERE CardType BETWEEN @CardType_RS AND @CardType_RE AND CardID BETWEEN @CardID_RS AND @CardID_RE AND SocialNetworkID BETWEEN @SocialNetworkID_RS AND @SocialNetworkID_RE ORDER BY CardType ASC, CardID ASC, SocialNetworkID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04080F_1] TO [DYNGRP]
GO
