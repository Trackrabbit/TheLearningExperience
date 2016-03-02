SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04080SS_1] (@CardType smallint, @CardID char(61), @SocialNetworkID smallint) AS  set nocount on SELECT TOP 1  CardType, CardID, SocialNetworkID, MemberID, DEX_ROW_ID FROM .SY04080 WHERE CardType = @CardType AND CardID = @CardID AND SocialNetworkID = @SocialNetworkID ORDER BY CardType ASC, CardID ASC, SocialNetworkID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04080SS_1] TO [DYNGRP]
GO
